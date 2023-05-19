#include "policy.h"
#include<stdio.h>
#include<iostream>
#include<set>
using namespace std;

set <pair<int,int>> queue;

Action policy(const std::vector<Event>& events, int current_cpu,
              int current_io) {
  int cpu_taskid=current_cpu,io_taskid=0;
  //printf("%d\n",events[0].time);
  //cout<<events.size()<<' ';
  for(unsigned int i=0;i<events.size();i++)
  {
    cout<<events[i].task.arrivalTime<<' '<<events[i].time<<' '<<events[i].task.deadline<<' '<<(int)events[i].type<<' ';

    if(events[i].task.taskId==cpu_taskid)
    {
      //printf("当前cpu任务在列表中\n");
      if(events[i].type==Event::Type::kIoRequest||events[i].type==Event::Type::kTaskFinish)
        cpu_taskid=0;       //当前任务已不占用cpu，考虑cpu闲置的情况
    }
  }
  if(cpu_taskid==0)
  {
    for(unsigned int i=0;i<events.size();i++)
    {
      if(events[i].type==Event::Type::kIoEnd||events[i].type==Event::Type::kTaskArrival)
      {
        cpu_taskid=events[i].task.taskId;
        break;
      }
    }
  }
  //if(io_taskid)
  //{
    for(unsigned int i=0;i<events.size();i++)
    {
      if(events[i].type==Event::Type::kIoRequest)
      {
        io_taskid=events[i].task.taskId;
        break;
      }
    }
  //}
  for(unsigned int i=0;i<events.size();i++)
  {
    if(events[i].task.taskId==current_io)
    {
      //cout<<events[i].task.taskId;
      //printf("当前io任务在列表中\n");
      if(events[i].type!=Event::Type::kIoEnd)
        io_taskid=0;        //当前任务仍在占用io资源
    }
  }
  Action ans;
  ans.cpuTask=cpu_taskid;
  ans.ioTask=io_taskid;
  printf("%d %d\n",ans.cpuTask,ans.ioTask);
  return ans;
}