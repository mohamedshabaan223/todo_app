import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/common/color_manger.dart';
import 'package:todo_app/common/widget/task_card.dart';

class TaskTab extends StatefulWidget {
  const TaskTab({super.key});

  @override
  State<TaskTab> createState() => _TaskTabState();
}

class _TaskTabState extends State<TaskTab> {
  DateTime selectedDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
     Padding(
       padding: const EdgeInsets.all(8.0),
       child: EasyInfiniteDateTimeLine(
        showTimelineHeader: false,
        firstDate: DateTime(2025),
        focusDate:selectedDate, 
        lastDate: DateTime(2027),
        onDateChange: (date) {
          selectedDate=date;
          setState(() {
            
          });
        },
        dayProps: EasyDayProps(
          todayStyle: DayStyle(
              decoration: BoxDecoration(
                border: Border.all(color: Theme.of(context).primaryColor, width: 3),
              borderRadius: BorderRadius.circular(12),
              color: ColorManger.white,
            )
            
          ),
          inactiveDayStyle: DayStyle(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: ColorManger.white,
            )
          ),
          activeDayStyle: DayStyle(
            monthStrStyle: TextStyle(
              fontSize: 15,
              color: ColorManger.primaryColor,
              fontWeight: FontWeight.w500,
            ),
            dayStrStyle: TextStyle(
              fontSize: 15,
              color: ColorManger.primaryColor,
              fontWeight: FontWeight.w500,
            ),
            dayNumStyle: TextStyle(
              fontSize: 18,
              color: ColorManger.primaryColor,
              fontWeight: FontWeight.w700,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: ColorManger.white,
            )
          )
        ),),
     ),
     Expanded(child: ListView.builder(
      padding: EdgeInsets.only(top: 10),
      itemBuilder: (context , index)=>TaskCard())),
    ],);
  }
}