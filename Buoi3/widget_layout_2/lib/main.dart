import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

void main() {
  debugPaintSizeEnabled = true; // Remove to suppress visual layout
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter layout demo'),
        ),
        body: Center(child: buildExpandedImagesWithFlex()),
      ),
    );
  }

  //overflowing-row
  Widget buildOverflowingRow() => Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset('images/1.jpg'),
          Image.asset('images/2.jpg'),
          Image.asset('images/3.jpg'),
        ],
      );

  //expanded-images
  Widget buildExpandedImages() => Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Image.asset('images/1.jpg'),
          ),
          Expanded(
            child: Image.asset('images/2.jpg'),
          ),
          Expanded(
            child: Image.asset('images/3.jpg'),
          ),
        ],
      );

  //expanded-images-with-flex
  Widget buildExpandedImagesWithFlex() => Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Image.asset('images/1.jpg'),
          ),
          Expanded(
            flex: 2,
            child: Image.asset('images/2.jpg'),
          ),
          Expanded(
            child: Image.asset('images/3.jpg'),
          ),
        ],
      );
}

