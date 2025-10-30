import 'package:flutter/material.dart';
class CustomScaffoldBg extends StatelessWidget {
CustomScaffoldBg({super.key , this.appBar , this.body , this.bottomNavigationBar , this.floatingActionButton, this.floatingActionButtonLocation });
PreferredSizeWidget? appBar;
Widget? body;
Widget? bottomNavigationBar;
Widget? floatingActionButton;
FloatingActionButtonLocation? floatingActionButtonLocation;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Theme.of(context).primaryColor,
          Theme.of(context).scaffoldBackgroundColor,
        ],
        stops: [
          0.2,
          0.2
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter
      ),),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: appBar,
        body:body ,
        bottomNavigationBar: bottomNavigationBar,
        floatingActionButton:floatingActionButton ,
        floatingActionButtonLocation: floatingActionButtonLocation,
      ),
    );
  }
}