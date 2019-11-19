import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp( 
      title: 'Demo Container',
      home: _Container(),
    );
  }
}

class _Container extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    return Scaffold( 
      appBar: AppBar(title: Text('Demo container'),),
      body: Center( 
        child: Container( 
          width: 200.0,
          height: 200.0,
          color: Colors.blue,
          child: Padding( 
            padding: const EdgeInsets.all(16.0),
            child: Container( 
              decoration: BoxDecoration( 
                border: Border.all(width: 5.0, color: Colors.black),
                color: Colors.yellow,
                borderRadius: BorderRadius.circular(20.0),
              ),
              padding: EdgeInsets.fromLTRB(10, 20, 30, 40),
              child: Container( 
                color: Colors.red,
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0), // padding đối xứng dọc ngang
                transform: new Matrix4.rotationZ(-0.1),
                child: Container( 
                  decoration: BoxDecoration( 
                    color: Colors.green,
                    borderRadius: BorderRadius.horizontal(
                      left: Radius.circular(10.0),
                      right: Radius.circular(30.0)
                    )
                  ),
                  alignment: Alignment.topLeft,
                  child: Text('Hello'),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}