#include "policy.h"
#include<stdio.h>
#include<iostream>
using namespace std;
#define HIGH_WEIGHT 0.6
#define ARRIVAL_WEIGHT 0.85
#define TIMER_WEIGHT 0.9

Action policy(const std::vector<Event>& events, int current_cpu,
              int current_io) {
  int cpu_taskid=current_cpu,io_taskid=0;
  double cpu_task_weight=1.0,io_task_weight=1.0;
  //printf("%d\n",events[0].time);
  //cout<<events.size()<<' ';
  for(unsigned int i=0;i<events.size();i++)
  {
    if(events[i].task.taskId==cpu_taskid)
    {
      //printf("当前cpu任务在列表中\n");
      if(events[i].type==Event::Type::kIoRequest||events[i].type==Event::Type::kTaskFinish)
        cpu_taskid=0;       //当前任务已不占用cpu，考虑cpu闲置的情况
      if(events[i].time>=events[i].task.deadline)
        cpu_taskid=0;
      else
        cpu_task_weight=TIMER_WEIGHT*(events[i].task.deadline-events[i].time)/
                        (events[i].task.deadline-events[i].task.arrivalTime);
    }
    /*if(events[i].task.taskId==io_taskid)
    {
      //printf("当前io任务在列表中\n");
      if(events[i].type!=Event::Type::kIoEnd)
        io_taskid=0;        //当前任务仍在占用io资源
    }*/
  }
  for(unsigned int i=0;i<events.size();i++)
  {
    double tmp_cpu_weight=1.0;
    //cout<<events[i].task.arrivalTime<<' '<<events[i].time<<' '<<events[i].task.deadline<<' '<<(int)events[i].type<<' ';
    if(events[i].time<events[i].task.deadline)
    {
      int arrivaltime=events[i].task.arrivalTime;
      int deadline=events[i].task.deadline;
      int time=events[i].time;
      //cout<<arrivaltime<<' '<<deadline<<' '<<time<<endl;
      if(events[i].type==Event::Type::kTaskArrival)
        tmp_cpu_weight=ARRIVAL_WEIGHT*(deadline-time)/(deadline-arrivaltime);
      //else if(events[i].type==Event::Type::kTimer)
      //  tmp_cpu_weight=TIMER_WEIGHT*(deadline-time)/(deadline-arrivaltime);
      else if(events[i].type==Event::Type::kIoEnd)
        tmp_cpu_weight=1.0*(deadline-time)/(deadline-arrivaltime);
      if(events[i].task.priority==Event::Task::Priority::kHigh&&tmp_cpu_weight<1.0)
        tmp_cpu_weight*=HIGH_WEIGHT;
    }
    if(tmp_cpu_weight<cpu_task_weight)
    {
      cpu_taskid=events[i].task.taskId;
      cpu_task_weight=tmp_cpu_weight;
    }
  }
  //if(io_taskid)
  //{
    for(unsigned int i=0;i<events.size();i++)
    {
      double tmp_io_weight=1.0;
      if(events[i].type==Event::Type::kIoRequest&&events[i].time<events[i].task.deadline)
      {
        tmp_io_weight=1.0*(events[i].task.deadline-events[i].time)/
                      (events[i].task.deadline-events[i].task.arrivalTime);
        if(events[i].task.priority==Event::Task::Priority::kHigh)
          tmp_io_weight*=HIGH_WEIGHT;
        //cout<<' '<<tmp_io_weight<<' ';
      }
      if(tmp_io_weight<io_task_weight)
      {
        //cout<<1;
        io_taskid=events[i].task.taskId;
        io_task_weight=tmp_io_weight;
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
  //printf("%d %d\n",ans.cpuTask,ans.ioTask);
  return ans;
}