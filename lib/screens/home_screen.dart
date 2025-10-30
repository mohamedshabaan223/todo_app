import 'package:flutter/material.dart';
import 'package:todo_app/common/widget/custom_bottom_sheet.dart';
import 'package:todo_app/common/widget/custom_scaffold_bg.dart';
import 'package:todo_app/tabs/setting/setting_tab.dart';
import 'package:todo_app/tabs/tasks/task_tab.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> tabs =[
  TaskTab(),
  SettingTab(),
  ];
  int index =0;
  @override
  Widget build(BuildContext context) {
    return CustomScaffoldBg(
      appBar: AppBar(title: Text('To DoApp'),),
      body: tabs[index],
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        clipBehavior: Clip.antiAlias,
        padding: EdgeInsets.zero,
        child: BottomNavigationBar(
          currentIndex: index,
          onTap: (value) {
            index = value;
            setState(() {
              
            });
          },
          elevation: 0,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.list),label: 'list'),
            BottomNavigationBarItem(icon: Icon(Icons.settings),label: 'setting'),
          ]),
      ),
        floatingActionButton: FloatingActionButton(onPressed: (){
          showModalBottomSheet(context: context,
           builder: (context) => CustomBottomSheet());
        },
        child: Icon(Icons.add),),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}