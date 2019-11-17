import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Building layouts"),
        ),
        body: myLayoutWidget(),
      ),
    );
  }
}

// Widget myLayoutWidget() {
//   return Text("Hello world!");
// }

// padding
// Widget myLayoutWidget() {
//       return Padding(
//         padding: EdgeInsets.all(32.0),
//         child: Text("Hello world!"),
//       );
//     }

// align
// Widget myLayoutWidget() {
//       return Align(
//         alignment: Alignment.topRight,
//         child: Text(
//           "Hello",
//           style: TextStyle(fontSize: 30),
//         ),
//       );
//     }

// container
Widget myLayoutWidget() {
  return Container(
    margin: EdgeInsets.all(30.0),
    padding: EdgeInsets.all(10.0),
    alignment: Alignment.topCenter,
    width: 200,
    height: 100,
    decoration: BoxDecoration(
      color: Colors.green,
      border: Border.all(),
    ),
    child: Text("Hello", style: TextStyle(fontSize: 30)),
  );
}

// row
// Widget myLayoutWidget() {
//       return Column(
//         children: [
//           Icon(Icons.home),
//           Icon(Icons.home),
//           Icon(Icons.home),
//           Icon(Icons.home),
//         ],
//       );
//     }

// expended
// Widget myLayoutWidget() {
//       return Row(
//         children: [
//           Expanded(child: Icon(Icons.home)),
//           Expanded(child: Icon(Icons.home)),
//           Expanded(child: Icon(Icons.home)),
//           Expanded(child: Icon(Icons.home)),
//         ],
//       );
//     }

// Widget myLayoutWidget() {
//       return Row(
//         children: [
//           Expanded(
//             flex: 7,
//             child: Container(
//               color: Colors.green,
//             ),
//           ),
//           Expanded(
//             flex: 3,
//             child: Container(
//               color: Colors.yellow,
//             ),
//           ),
//         ],
//       );
//     }

// stack
// Widget myLayoutWidget() {
//       return Stack(
//         children: [
//           Icon(Icons.home),
//           Icon(Icons.home),
//           Icon(Icons.home),
//           Icon(Icons.home),
//         ],
//       );
//     }

//  Widget myLayoutWidget() {
//       return Stack(

//         // any unpositioned children (ie, our text) will be aligned at the bottom right
//         alignment: Alignment.bottomRight,

//         children: [

//           // first child in the stack is on bottom
//           Image.asset('images/1.jpg'),

//           // second child in the stack
//           Padding(
//             padding: EdgeInsets.all(16.0),
//             child: Text(
//               'Picture', 
//               style: TextStyle(fontSize: 30, color: Colors.white),
//             ),
//           ),

//         ],
//       );
//     }