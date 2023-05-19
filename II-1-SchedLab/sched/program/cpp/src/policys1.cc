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
  int current_id=0;
  //printf("%d\n",events[current_id].time);
  //cerr<<events.size()<<' ';
  //cerr<<current_cpu<<' '<<current_io<<' ';
  for(unsigned int i=0;i<events.size();i++)
  {
    //cerr<<events[i].task.taskId<<' '<<events[i].task.arrivalTime<<' '<<events[i].time<<' '<<events[i].task.deadline<<' '<<(int)events[i].type<<' ';
    if(events[i].type==Event::Type::kTaskArrival)
    {
      if(queue_bool.insert(make_pair(events[i].task.taskId,events[i].task.arrivalTime)).second)
        Q.push(make_pair(events[i].task.taskId,events[i].task.arrivalTime));
    }
    //}
  }
  /*for(unsigned int i=0;i<events.size();i++)
  {
    if(events[i].type!=Event::Type::kTimer)
    {
      current_id=i;
      break;
    }
  }*/
  current_id=events.size()-1;
  if(cpu_taskid==0&&events[current_id].task.taskId==Q.front().first&&events[current_id].type!=Event::Type::kTimer)
  {
    if(events[current_id].type==Event::Type::kTaskArrival)
    {
      cpu_taskid=Q.front().first;
      //Q.pop();
    }
    else if(events[current_id].type==Event::Type::kIoRequest)
    {
      cpu_taskid=0;
      io_taskid=events[current_id].task.taskId;
    }
    else if(events[current_id].type==Event::Type::kTaskFinish)
    {
      Q.pop();
      if(!Q.empty())
      {
        cpu_taskid=Q.front().first;
        //Q.pop();
      }
      else
        cpu_taskid=0;
    }
    else if(events[current_id].type==Event::Type::kIoEnd)
      cpu_taskid=events[current_id].task.taskId;
  }
  Action ans;
  ans.cpuTask=cpu_taskid;
  ans.ioTask=io_taskid;
  //printf("%d %d\n",ans.cpuTask,ans.ioTask);
  //cerr<<ans.cpuTask<<' '<<ans.ioTask<<' '<<Q.size()<<endl;
  return ans;
}