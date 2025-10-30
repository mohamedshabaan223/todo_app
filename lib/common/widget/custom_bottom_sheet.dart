import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:todo_app/common/color_manger.dart';
import 'package:todo_app/common/widget/custom_eleveted_button.dart';
import 'package:todo_app/common/widget/custom_text_form.dart';

class CustomBottomSheet extends StatefulWidget {
  const CustomBottomSheet({super.key});

  @override
  State<CustomBottomSheet> createState() => _CustomBottomSheetState();
}

class _CustomBottomSheetState extends State<CustomBottomSheet> {
  TextEditingController nameTaskController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  DateTime selectedtime = DateTime.now();
  DateFormat dateFormat = DateFormat('yyyy/MM/dd');
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(20), 
        topRight: Radius.circular(20)),
        color: ColorManger.white,
      ),
      child: Form(
        key: formkey,
        child: Column(
          children: [
            Text('Add New Task' , style: Theme.of(context).textTheme.titleMedium,),
            CustomTextForm(controller: nameTaskController,
            validator: (value) {
              if(value == null || value== ''){
                return 'Task name shouldnot be empty';
              }else if(value.length<3){
                return 'the task name cannot be less than 3';
              }else{
                return null;
              }
            },
            hintText: 'Task Name',
            maxLines: 1,
            ),
            CustomTextForm(controller: nameTaskController,
            validator: (value) {
              if(value == null || value== ''){
                return 'Description shouldnot be empty';
              }else if(value.length<5){
                return 'Descraption cannot be less than 5';
              }else{
                return null;
              }
            },
            hintText: 'Description',
            maxLines: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Selected Date' , style: Theme.of(context).textTheme.titleSmall,),
            ),
            TextButton(onPressed: () async{
             DateTime? date = await showDatePicker(context: context,
               firstDate: DateTime.now(),
               initialDate: selectedtime,
               lastDate: DateTime.now().add(Duration(days: 300)));
               if (date != null) {
                 selectedtime = date;
                 setState(() {
                   
                 });
               }

            },
            style: TextButton.styleFrom(
              backgroundColor: Theme.of(context).primaryColor,
              foregroundColor: ColorManger.white
            ),
             child: Padding(
               padding: const EdgeInsets.symmetric(vertical: 2 , horizontal: 20),
               child: Text(dateFormat.format(selectedtime)),
             ) , 
            ),
            CustomElevetedButton(ontap: (){
              if (formkey.currentState!.validate()) {
                
              }
            }, title: 'Save')
          ],
        ),
      ),
    );
  }
}