import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'src/app.dart'; // app.dart의 클래스를 가져온다.

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return GetMaterialApp(
      title: "Carrot clone coding",
      initialRoute: '/',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          elevation: 0,
          color: Color(0xff212123),
          titleTextStyle: TextStyle(
            color: Colors.white,
          ),
        ),
        scaffoldBackgroundColor: const Color(0xff212123)
      ),
      getPages: [
        GetPage(name: '/', page: () => const App()),
      ],
    );
  }
}