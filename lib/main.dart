import 'package:flutter/material.dart';
import 'package:project/employeeprofile.dart';

import 'homescreen.dart';

void main(){
  runApp(myapp());


}
class myapp extends StatelessWidget {
  const myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        HomeScreen.routeName : (_) => HomeScreen(),
        employeeprofile.routeName :(_) => employeeprofile(),
      },
      initialRoute: HomeScreen.routeName,
      debugShowCheckedModeBanner: false,
    );
  }
}
