import 'package:flutter/material.dart';
import 'package:todo_app/common/color_manger.dart';

class CustomElevetedButton extends StatelessWidget {
 CustomElevetedButton({super.key , required this.ontap , required this.title});
 final String title;
 final void Function() ontap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: ontap,
     style: ElevatedButton.styleFrom(
      backgroundColor: Theme.of(context).primaryColor,
      fixedSize: Size(MediaQuery.of(context).size.width*0.6, 45),
      shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(15),),
     ),
    child:  Text(title , style: Theme.of(context).textTheme.titleSmall?.copyWith(color: ColorManger.white),),
     );
  }
}