import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

void main() {
  debugPaintSizeEnabled = true; // set bố cục trực quan thành false để tắt chế độ debug layout
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final showGrid = true; // false: show List
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter layout demo'),
        ),
        body: Center(child: showGrid ? _buildGrid() : _buildList()),
      ),
    );
  }

  // column Image
  Widget _buildImageColumn() => Container(
        decoration: BoxDecoration(
          color: Colors.black26,
        ),
        child: Column(
          children: [
            _buildImageRow(1),
            _buildImageRow(3),
          ],
        ),
      );

  // row Image
  Widget _buildDecoratedImage(int imageIndex) => Expanded(
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(width: 10, color: Colors.black38),
            borderRadius: const BorderRadius.all(const Radius.circular(8)),
          ),
          margin: const EdgeInsets.all(4),
          child: Image.asset(
            'images/$imageIndex.jpg',
          ),
        ),
      );

  Widget _buildImageRow(int imageIndex) => Row(
        children: [
          _buildDecoratedImage(imageIndex),
          _buildDecoratedImage(imageIndex + 1),
        ],
      );
}

// layout row
Widget _row() => Container(
      color: Colors.yellow,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            color: Colors.blue,
            height: 50.0,
            width: 50.0,
          ),
          Icon(Icons.adjust, size: 50.0, color: Colors.pink),
          Icon(
            Icons.adjust,
            size: 50.0,
            color: Colors.purple,
          ),
          Icon(
            Icons.adjust,
            size: 50.0,
            color: Colors.greenAccent,
          ),
          Container(
            color: Colors.orange,
            height: 50.0,
            width: 50.0,
          ),
          Icon(
            Icons.adjust,
            size: 50.0,
            color: Colors.cyan,
          ),
        ],
      ),
    );

// layout column
Widget _column() => Container(
      color: Colors.yellow,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            color: Colors.blue,
            height: 50.0,
            width: 50.0,
          ),
          Icon(Icons.adjust, size: 50.0, color: Colors.pink),
          Icon(
            Icons.adjust,
            size: 50.0,
            color: Colors.purple,
          ),
          Icon(
            Icons.adjust,
            size: 50.0,
            color: Colors.greenAccent,
          ),
          Container(
            color: Colors.orange,
            height: 50.0,
            width: 50.0,
          ),
          Icon(
            Icons.adjust,
            size: 50.0,
            color: Colors.cyan,
          ),
        ],
      ),
    );

// grid
Widget _buildGrid() => GridView.extent(
    maxCrossAxisExtent: 150,
    padding: const EdgeInsets.all(4),
    mainAxisSpacing: 4,
    crossAxisSpacing: 4,
    children: _buildGridTileList(30));

List<Container> _buildGridTileList(int count) =>
    List.generate(count, (i) => Container(child: Image.asset('images/$i.jpg')));


// list
Widget _buildList() => ListView(
      children: [
        _tile('CineArts at the Empire', '85 W Portal Ave', Icons.theaters),
        _tile('The Castro Theater', '429 Castro St', Icons.theaters),
        _tile('Alamo Drafthouse Cinema', '2550 Mission St', Icons.theaters),
        _tile('Roxie Theater', '3117 16th St', Icons.theaters),
        _tile('United Artists Stonestown Twin', '501 Buckingham Way',
            Icons.theaters),
        _tile('AMC Metreon 16', '135 4th St #3000', Icons.theaters),
        Divider(),
        _tile('K\'s Kitchen', '757 Monterey Blvd', Icons.restaurant),
        _tile('Emmy\'s Restaurant', '1923 Ocean Ave', Icons.restaurant),
        _tile('Chaiya Thai Restaurant', '272 Claremont Blvd', Icons.restaurant),
        _tile('La Ciccia', '291 30th St', Icons.restaurant),
      ],
    );

ListTile _tile(String title, String subtitle, IconData icon) => ListTile(
      title: Text(title,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 20,
          )),
      subtitle: Text(subtitle),
      leading: Icon(
        icon,
        color: Colors.blue[500],
      ),
    );
