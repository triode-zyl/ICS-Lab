#include "policy.h"
#include<stdio.h>
#include<iostream>
#include<set>
#include<queue>
using namespace std;

set <pair<int,int>> queue_bool;
queue <pair<int,int>> Q;
Action policy(const std::vector<Event>& events, int current_cpu,
              int current_io) {
  int cpu_taskid=current_cpu,io_taskid=0;
  //int current_id;
  //printf("%d\n",events[0].time);
  //cout<<events.size()<<' ';
  for(unsigned int i=0;i<events.size();i++)
  {
    if(events[i].type==Event::Type::kTaskArrival)
    {
      if(queue_bool.insert(make_pair(events[i].task.taskId,events[i].task.arrivalTime)).second)
        Q.push(make_pair(events[i].task.taskId,events[i].task.arrivalTime));
    }
    //}
  }
  if(cpu_taskid==0)
  {
    if(events[0].type==Event::Type::kTaskArrival)
    {
      cpu_taskid=Q.front().first;
      Q.pop();
    }
    else if(events[0].type==Event::Type::kIoRequest)
    {
      cpu_taskid=0;
      io_taskid=events[0].task.taskId;
    }
    else if(events[0].type==Event::Type::kTaskFinish)
    {
      if(!Q.empty())
      {
        cpu_taskid=Q.front().first;
        Q.pop();
      }
      else
        cpu_taskid=0;
    }
    else if(events[0].type==Event::Type::kIoEnd)
      cpu_taskid=events[0].task.taskId;
  }
  Action ans;
  ans.cpuTask=cpu_taskid;
  ans.ioTask=io_taskid;
  //printf("%d %d\n",ans.cpuTask,ans.ioTask);
  //cout<<ans.cpuTask<<' '<<ans.ioTask<<' '<<Q.size()<<endl;
  return ans;
}