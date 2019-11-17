import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.green),
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget{
  @override 
  Widget build(BuildContext context){

    final double myTextSize = 30.0;
    final double myIconSize = 40.0;
    final TextStyle myTextStyle = TextStyle( 
      color: Colors.grey,
      fontSize: myTextSize
    );

    var column = Column( 
      crossAxisAlignment: CrossAxisAlignment.stretch, // thuộc tính cho cloumn tự dãn full kích thước device
      children: <Widget>[
        // setup the card
        MyCard(
          title: Text(
            'Favorite',
            style: myTextStyle,
          ),
          icon: Icon(Icons.favorite, size: myIconSize, color: Colors.red,),
        ),
        MyCard( 
          title: Text(
            'Alarm',
            style: myTextStyle,
          ),
          icon: Icon(Icons.alarm, size: myIconSize, color: Colors.blue,),
        ),
        MyCard( 
          title: Text(
            'Airport Shuttle',
            style: myTextStyle,
          ),
          icon: Icon(Icons.airport_shuttle, size: myIconSize, color: Colors.amber,),
        ),
        MyCard(
            title: Text(
              "Done",
              style: myTextStyle,
            ),
            icon: Icon(Icons.done, size: myIconSize, color: Colors.green)
            ),
      ],
    );
    return Scaffold(
      appBar: AppBar( 
        title: Text('My Card'),
      ),
      body: column,
    );
  }
}


// tạo một stateless widget để tái sử dụng
class MyCard extends StatelessWidget{
  final Widget icon;
  final Widget title;

  // Khởi tạo: {} ở đây biểu thị các giá trị truyền vào là tuỳ chọn, có thể có hoặc không
  MyCard({this.title, this.icon});

  @override 
  Widget build(BuildContext context){
    return Container( 
      padding: const EdgeInsets.only(bottom: 1.0),
      child: Card( 
        child: Container( 
          padding: const EdgeInsets.all(20.0),
          child: Column( 
            children: <Widget>[
              this.title,
              this.icon
            ],
          ),
        ),
      ),
    );
  }
}