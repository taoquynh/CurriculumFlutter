import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override 
  Widget build(BuildContext context){
    return MaterialApp( 
      title: 'Use Theme',
      home: MyHome(),
      theme: ThemeData( 
        accentColor: Colors.teal,
      ),
    );
  }
}

class MyHome extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Use Theme'),
        backgroundColor: Theme.of(context).accentColor,), // màu appbar 
      body: Container( 
        // một cách khác để đặt background (không sử dụng đồng thời với color)
        decoration: BoxDecoration(
          // background image from url
          image: DecorationImage(
            image: NetworkImage('https://img.thuthuatphanmem.vn/uploads/2018/09/28/hinh-nen-iphone-dep-nhat_030009517.jpg',),
            fit: BoxFit.fill) // fit image
          ),
        // color: Colors.teal,
            padding: EdgeInsets.only(bottom: 500),
        child: Center( 
          child: Container( 
            // sử dụng theme accent color như background color cho widget con này
            color: Theme.of(context).accentColor,
            child: Text( 
              'Theme',
              // style: Theme.of(context).textTheme.title, // đặt kiểu văn bản theo theme
              style: TextStyle( 
                color: Theme.of(context).textTheme.title.color,
                fontSize: 32
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: Theme( 
        data: Theme.of(context).copyWith(
          colorScheme: Theme.of(context).colorScheme.copyWith(secondary: Theme.of(context).accentColor),
        ),
        child: FloatingActionButton(
          child: Icon(Icons.add_to_queue, color: Colors.white,),
          onPressed: null,
        ),
      ),
    );
  }
}