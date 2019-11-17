import 'package:flutter/material.dart';

void main() => runApp(MyApp());

// Một ứng dụng Flutter bắt buộc phải trả về đầu tiên là một MaterialApp,
// MaterialApp này sẽ có thuộc tính title (Tên ứng dụng hiển thị cho người dùng) và home (quy định màn đầu tiên xuất hiện)
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: HelloWorld(),
    );
  }
}

class HelloWorld extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.teal, Colors.blue])),
                child: Center( 
                  child: Text('Hello World!', style: TextStyle(fontSize: 40, color: Colors.white),),
                ),
      ),
    );
  }
}
