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
list <int> Q;
list <int> waiting_cpuid;
list <int> waiting_ioid;
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
    if(events[current_id].type==Event::Type::kTaskArrival)
    {
      if(queue_bool.insert(make_pair(events[i].task.taskId,events[i].task.deadline)).second)
        Q.push_back(events[i].task.taskId);
      if(current_cpuid==0)
      {
        cpu_taskid=Q.front();
        current_cpuid=Q.front();
        Q.pop_front();
      }
      //Q.pop();
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
        waiting_ioid.push_back(events[current_id].task.taskId);
      }
      if(!waiting_cpuid.empty())
      {
        cpu_taskid=waiting_cpuid.front();
        current_cpuid=waiting_cpuid.front();
        waiting_cpuid.pop_front();
      }
      else if(!Q.empty())
      {
        cpu_taskid=Q.front();
        current_cpuid=Q.front();
        Q.pop_front();
      }
    }
    else if(events[current_id].type==Event::Type::kTaskFinish)
    {
      current_cpuid=0;
      if(!waiting_cpuid.empty())
      {
        cpu_taskid=waiting_cpuid.front();
        current_cpuid=waiting_cpuid.front();
        waiting_cpuid.pop_front();
      }
      else if(!Q.empty())
      {
        cpu_taskid=Q.front();
        current_cpuid=Q.front();
        Q.pop_front();
      }
    }
    else if(events[current_id].type==Event::Type::kIoEnd)
    {
      current_ioid=0;
      if(!waiting_ioid.empty())
      {
        io_taskid=waiting_ioid.front();
        current_ioid=waiting_ioid.front();
        waiting_ioid.pop_front();
      }
      waiting_cpuid.push_back(events[current_id].task.taskId);
      if(current_cpuid==0)
      {
        cpu_taskid=waiting_cpuid.front();
        current_cpuid=waiting_cpuid.front();
        waiting_cpuid.pop_front();
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