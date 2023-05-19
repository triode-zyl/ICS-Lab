#include "policy.h"
#include<stdio.h>
#include<iostream>
#include<set>
#include<queue>
#include<list>
using namespace std;
//int Size=0;
set <pair<int,int>> queue_bool;
//queue <pair<int,int>> Q;
list <int> Q_h;
list <int> Q_l;
list <int> waiting_cpuid_h;
list <int> waiting_cpuid_l;
list <int> waiting_ioid_h;
list <int> waiting_ioid_l;
int current_cpuid=0,current_ioid=0;
Action policy(const std::vector<Event>& events, int current_cpu,
              int current_io) {
  int cpu_taskid=current_cpu,io_taskid=0;
  int current_id;
  //cerr<<current_cpuid<<' '<<current_ioid<<' ';
  //cerr<<current_cpu<<' '<<current_io<<' ';
  /*for(unsigned int i=0;i<events.size();i++)
  {
    //cerr<<events[i].task.taskId<<' '<<events[i].task.arrivalTime<<' '<<events[i].time<<' '<<events[i].task.deadline<<' '<<(int)events[i].type<<' ';
    if(events[i].type==Event::Type::kTaskArrival)
    {
      if(queue_bool.insert(make_pair(events[i].task.taskId,events[i].task.deadline)).second)
        Q.push_back(events[i].task.taskId);
    }
  }*/
  for(unsigned int i=0;i<events.size();i++)
  {
    current_id=i;
    int Priority;
    if(events[current_id].task.priority==Event::Task::Priority::kHigh)
      Priority=1;
    else 
      Priority=0;
    if(events[current_id].type==Event::Type::kTaskArrival)
    {
      if(queue_bool.insert(make_pair(events[i].task.taskId,events[i].task.deadline)).second)
      {
        if(Priority==1)
          Q_h.push_back(events[i].task.taskId);
        else
          Q_l.push_back(events[i].task.taskId);
      }
      if(current_cpuid==0)
      {
        if(!Q_h.empty())
        {
          cpu_taskid=Q_h.front();
          current_cpuid=Q_h.front();
          Q_h.pop_front();
        }
        else
        {
          cpu_taskid=Q_l.front();
          current_cpuid=Q_l.front();
          Q_l.pop_front();
        }
      }
    }
    else if(events[current_id].type==Event::Type::kIoRequest)
    {
      current_cpuid=0;
      if(current_ioid==0)
      {
        current_ioid=events[current_id].task.taskId;
        io_taskid=events[current_id].task.taskId;        
      }
      else
      {
        if(Priority)
          waiting_ioid_h.push_back(events[current_id].task.taskId);
        else
          waiting_ioid_l.push_back(events[current_id].task.taskId);
      }
      if(!waiting_cpuid_h.empty())
      {
        cpu_taskid=waiting_cpuid_h.front();
        current_cpuid=waiting_cpuid_h.front();
        waiting_cpuid_h.pop_front();
      }
      else if(!waiting_cpuid_l.empty())
      {
        cpu_taskid=waiting_cpuid_l.front();
        current_cpuid=waiting_cpuid_l.front();
        waiting_cpuid_l.pop_front();
      }
      else if(!Q_h.empty())
      {
        cpu_taskid=Q_h.front();
        current_cpuid=Q_h.front();
        Q_h.pop_front();
      }
      else if(!Q_l.empty())
      {
        cpu_taskid=Q_l.front();
        current_cpuid=Q_l.front();
        Q_l.pop_front();
      }
    }
    else if(events[current_id].type==Event::Type::kTaskFinish)
    {
      current_cpuid=0;
      if(!waiting_cpuid_h.empty())
      {
        cpu_taskid=waiting_cpuid_h.front();
        current_cpuid=waiting_cpuid_h.front();
        waiting_cpuid_h.pop_front();
      }
      else if(!waiting_cpuid_l.empty())
      {
        cpu_taskid=waiting_cpuid_l.front();
        current_cpuid=waiting_cpuid_l.front();
        waiting_cpuid_l.pop_front();
      }
      else if(!Q_h.empty())
      {
        cpu_taskid=Q_h.front();
        current_cpuid=Q_h.front();
        Q_h.pop_front();
      }
      else if(!Q_l.empty())
      {
        cpu_taskid=Q_l.front();
        current_cpuid=Q_l.front();
        Q_l.pop_front();
      }
    }
    else if(events[current_id].type==Event::Type::kIoEnd)
    {
      current_ioid=0;
      if(!waiting_ioid_h.empty())
      {
        io_taskid=waiting_ioid_h.front();
        current_ioid=waiting_ioid_h.front();
        waiting_ioid_h.pop_front();
      }
      else if(!waiting_ioid_l.empty())
      {
        io_taskid=waiting_ioid_l.front();
        current_ioid=waiting_ioid_l.front();
        waiting_ioid_l.pop_front();
      }
      if(Priority)
        waiting_cpuid_h.push_back(events[current_id].task.taskId);
      else
        waiting_cpuid_l.push_back(events[current_id].task.taskId);
      if(current_cpuid==0)
      {
        if(!waiting_cpuid_h.empty())
        {
          cpu_taskid=waiting_cpuid_h.front();
          current_cpuid=waiting_cpuid_h.front();
          waiting_cpuid_h.pop_front();
        }
        else
        {
          cpu_taskid=waiting_cpuid_l.front();
          current_cpuid=waiting_cpuid_l.front();
          waiting_cpuid_l.pop_front();
        }
        
      }  
    }
  }
  Action ans;
  ans.cpuTask=cpu_taskid;
  ans.ioTask=io_taskid;
  //printf("%d %d\n",ans.cpuTask,ans.ioTask);
  //cerr<<ans.cpuTask<<' '<<ans.ioTask<<' '<<Q.size()<<endl;
  return ans;
}