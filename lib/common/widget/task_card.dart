import 'package:flutter/material.dart';
import 'package:todo_app/common/color_manger.dart';

class TaskCard extends StatelessWidget {
  const TaskCard({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return 
      Card(
        color: ColorManger.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(20)),
        margin: EdgeInsets.symmetric(vertical: 4 , horizontal: 10),
        child: SizedBox
        (height: size.height*0.11,
          child: Center(
            child: ListTile(
              leading: Container(
                width: size.width*0.012,
                height: size.height*0.06,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Theme.of(context).primaryColor,
                ),
              ),
              title: Text('Play basket ball' , style: Theme.of(context).textTheme.titleMedium,),
              subtitle: Text('Description' , style: Theme.of(context).textTheme.titleSmall,),
              trailing: Container(
                padding: EdgeInsets.symmetric(vertical: 4 , horizontal: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Theme.of(context).primaryColor
                ),
                child: Icon(Icons.check , size: 30, color: Colors.white,),
              ),
            ),
          ),
        ),
    );
  }
}