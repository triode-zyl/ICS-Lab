#include "policy.h"
#include<stdio.h>
#include<iostream>
#include<set>
#include<queue>
#include<list>
using namespace std;

#define H_SCORE 0.5
#define L_SCORE 1.0

struct E
{
  int id;
  int used_times;
  int deadline;
  double priority_score;
  double score;
  E (int a)
  {
    id=a;
    used_times=0;
  }
  E (){};
  bool operator < (const E a)
  {
    return score<a.score;
  }
  bool operator == (const E a)
  {
    return score==a.score;
  }
  bool operator > (const E a)
  {
    return score>a.score;
  }
};

set <int> queue_bool;

list <E> Q_cpu;
list <E> Q_io;
E current_cpuid(0);
E current_ioid(0);
int last_time=0,now_time=0;

bool cmp(E e1,E e2)
{
  return e1.score<e2.score;
}

void update(int time)
{
  for(list<E>::iterator i=Q_cpu.begin();i!=Q_cpu.end();i++)
  {
    i->score=i->priority_score*(i->deadline-time+i->used_times);
  }
  Q_cpu.sort();
  for(list<E>::iterator i=Q_io.begin();i!=Q_io.end();i++)
  {
    i->score=i->priority_score*(i->deadline-time+i->used_times);
  }
  Q_io.sort();
}

Action policy(const std::vector<Event>& events, int current_cpu,
              int current_io) {
  queue_bool.insert(0);
  int cpu_taskid=current_cpu,io_taskid=0;
  
  //cout<<current_cpuid.id<<' '<<current_ioid.id<<' ';
  //cout<<current_cpu<<' '<<current_io<<' ';
  //cerr<<events[i].task.taskId<<' '<<events[i].task.arrivalTime<<' '<<events[i].time<<' '<<events[i].task.deadline<<' '<<(int)events[i].type<<' ';
  for(unsigned int i=0;i<events.size();i++)
  {
    now_time=events[i].time;
    //cerr<<events[i].task.taskId<<' '<<events[i].task.arrivalTime<<' '<<events[i].time<<' '<<events[i].task.deadline<<' '<<(int)events[i].type<<' ';
    if(events[i].type==Event::Type::kTaskArrival)
    {
      if(queue_bool.insert(events[i].task.taskId).second)
      {
        E tmp;
        tmp.deadline=events[i].task.deadline;
        tmp.id=events[i].task.taskId;
        tmp.used_times=0;
        if(events[i].task.priority==Event::Task::Priority::kHigh)
          tmp.priority_score=H_SCORE;
        else 
          tmp.priority_score=L_SCORE;
        Q_cpu.push_back(tmp);
      }
      if(current_ioid.id!=0)
        current_ioid.used_times+=now_time-last_time;
      if(current_cpuid.id!=0)
      {
        current_cpuid.used_times+=now_time-last_time;
        Q_cpu.push_back(current_cpuid);
      }
      update(now_time);
      cpu_taskid=Q_cpu.front().id;
      current_cpuid=Q_cpu.front();
      Q_cpu.pop_front();
    }
    else if(events[i].type==Event::Type::kIoRequest)
    {
      if(events[i].task.taskId==current_cpuid.id)
        current_cpuid.used_times+=now_time-last_time;        
      else
      {
        for(list<E>::iterator j=Q_cpu.begin();j!=Q_cpu.end();j++)
        {
          if(j->id==events[i].task.taskId)
          {
            Q_cpu.push_back(current_cpuid);
            current_cpuid=*j;
            Q_cpu.erase(j);
            break;
          }
        }
      }
      
      if(current_ioid.id==0)
      {
        current_ioid=current_cpuid;
        io_taskid=current_ioid.id;
      }
      else
      {
        current_ioid.used_times+=now_time-last_time;
        Q_io.push_back(current_cpuid);
      }
      current_cpuid=E(0);
      update(now_time);
      if(!Q_cpu.empty())
      {
        cpu_taskid=Q_cpu.front().id;
        current_cpuid=Q_cpu.front();
        Q_cpu.pop_front();
      }
    }
    else if(events[i].type==Event::Type::kTaskFinish)
    {
      if(current_cpuid.id==events[i].task.taskId)
        current_cpuid=E(0);
      else
      {
        for(list<E>::iterator j=Q_cpu.begin();j!=Q_cpu.end();j++)
        {
          if(j->id==events[i].task.taskId)
          {
            Q_cpu.erase(j);
            break;
          }
        }
        Q_cpu.push_back(current_cpuid);
      }
      if(current_ioid.id!=0)
        current_ioid.used_times+=now_time-last_time;
      update(now_time);
      if(!Q_cpu.empty())
      {
        cpu_taskid=Q_cpu.front().id;
        current_cpuid=Q_cpu.front();
        Q_cpu.pop_front();
      }
    }
    else if(events[i].type==Event::Type::kIoEnd)
    {
      current_ioid.used_times+=now_time-last_time;
      Q_cpu.push_back(current_ioid);
      current_ioid=E(0);
      if(current_cpuid.id!=0)
      {
        current_cpuid.used_times+=now_time-last_time;
        Q_cpu.push_back(current_cpuid);
      }
      update(now_time);
      if(!Q_io.empty())
      {
        io_taskid=Q_io.front().id;
        current_ioid=Q_io.front();
        Q_io.pop_front();
      }
      cpu_taskid=Q_cpu.front().id;
      current_cpuid=Q_cpu.front();
      Q_cpu.pop_front();
    }
    else
    {
      if(events.size()>1)
        continue;
      if(current_ioid.id!=0)
        current_ioid.used_times+=now_time-last_time;
      if(current_cpuid.id!=0)
      {
        current_cpuid.used_times+=now_time-last_time;
        Q_cpu.push_back(current_cpuid);
      }
      update(now_time);
      if(!Q_cpu.empty())
      {
        cpu_taskid=Q_cpu.front().id;
        current_cpuid=Q_cpu.front();
        Q_cpu.pop_front();
      }
    }
    last_time=now_time;
  }
  
  Action ans;
  ans.cpuTask=cpu_taskid;
  ans.ioTask=io_taskid;
  //printf("%d %d\n",ans.cpuTask,ans.ioTask);
  //cout<<ans.cpuTask<<' '<<ans.ioTask<<' '<<Q_cpu.size()<<endl;
  return ans;
}