import 'package:flutter/material.dart';
import 'package:todo_app/common/color_manger.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    primaryColor: ColorManger.primaryColor,
    datePickerTheme: DatePickerThemeData(
      headerBackgroundColor: ColorManger.primaryColor,
      headerForegroundColor: ColorManger.white,
      backgroundColor: ColorManger.white,
      confirmButtonStyle: ButtonStyle(
         backgroundColor: WidgetStatePropertyAll(ColorManger.primaryColor),
        foregroundColor: WidgetStatePropertyAll(ColorManger.white),
      ),
      cancelButtonStyle: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(ColorManger.primaryColor),
        foregroundColor: WidgetStatePropertyAll(ColorManger.white),
      ),
      todayBackgroundColor: WidgetStatePropertyAll(ColorManger.primaryColor),
     todayForegroundColor: WidgetStatePropertyAll(ColorManger.white),
    ),
    appBarTheme: AppBarTheme(
      centerTitle: false,
      backgroundColor: Colors.transparent,
      titleTextStyle: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.w700,
        color: ColorManger.white,
      ),
    ),
    scaffoldBackgroundColor: ColorManger.bglightcolor,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor: ColorManger.white,
      unselectedIconTheme: IconThemeData(
        color: const Color.fromARGB(255, 228, 227, 227),
        size: 30
      ),
      selectedIconTheme: IconThemeData(
        color: ColorManger.primaryColor,
        size: 30
      ),
      showSelectedLabels: false,
      showUnselectedLabels: false,
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      foregroundColor: ColorManger.white,
       backgroundColor: ColorManger.primaryColor,
      shape: CircleBorder(
        side: BorderSide(color: ColorManger.white , width: 5),
      )
    ),
    textTheme: TextTheme(
      titleMedium: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: ColorManger.primaryColor
      ),
      titleSmall: TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.w500,
        color: Colors.black
      )
    )
      
    
  );
   static ThemeData darkTheme = ThemeData(
     primaryColor: ColorManger.primaryColor,
     scaffoldBackgroundColor: ColorManger.bgdarkColor,
   );
}