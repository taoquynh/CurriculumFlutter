import 'package:flutter/material.dart';
import 'stateLess.dart';

class MainScreen extends StatefulWidget {
  @override
  _mainScreen createState() => new _mainScreen();
}

class _mainScreen extends State<MainScreen> {
  bool isChange = false;
  TextStyle _textStyle = TextStyle(
      color: Colors.white, fontSize: 16, letterSpacing: 0.5, wordSpacing: 1);

  void change() {
    this.isChange = !this.isChange;
    this.setState(() {
      if (isChange) {
        _textStyle = TextStyle(
            color: Colors.white,
            fontSize: 18,
            letterSpacing: 0.5,
            wordSpacing: 1);
      } else {
        _textStyle = TextStyle(
            color: Colors.white,
            fontSize: 16,
            letterSpacing: 0.5,
            wordSpacing: 1);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Compare StateFull & Stateless Widget'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 8),
            ),
            myLatyouWidget(),
            buildStatefull(),
          ],
        ),
      ),
    );
  }

  Widget buildStatefull() {
    return Container(
      margin: EdgeInsets.only(top: 8, left: 16, right: 16),
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.purple,
        // border: Border.all(),
        borderRadius: BorderRadius.all(Radius.circular(3.0)),
      ),

      // cột 3 hàng
      child: Column(
        // thuộc tính này làm cho chiều cao cột ôm lấy nội dung của nó
        mainAxisSize: MainAxisSize.min,
        children: [
          // hàng 1
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(right: 8.0),
                child: Icon(
                  Icons.favorite,
                  color: Colors.green,
                ),
              ),
              Text(
                'STATEFULL WIDGET',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ],
          ),

          // hàng 2 (mục đơn)
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: 16.0,
              horizontal: 0,
            ),
            child: Text(
              'StatefullWidget là một Widget có trạng thái, StatefullWidget chấp nhận sự thay đổi bên trong và nó chủ động thay đổi theo. StatefulWidget sẽ cần override một method có tên là createState()',
              style: _textStyle,
            ),
          ),

          // hàng 3
          Row(
            children: [
              Text(
                'Nhấn mũi tên để thay đổi',
                style: TextStyle(color: Colors.green[200], fontSize: 16),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: IconButton(
                  icon: Icon(
                    Icons.arrow_forward,
                    color: Colors.green,
                  ),
                  onPressed: () {
                    change();
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
