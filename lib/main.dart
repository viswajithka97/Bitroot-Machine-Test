import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:payment_application/bottom_navigation_modules/model/db_model.dart';
import 'package:payment_application/bottom_navigation_modules/view/bottom_navigarion.dart';

late Box<DBModel> box;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Hive.registerAdapter(DBModelAdapter());
  box = await Hive.openBox<DBModel>('student');
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          // fontFamily: ,
          ),
      home: BottomNavigationScreen(),
    );
  }
}
