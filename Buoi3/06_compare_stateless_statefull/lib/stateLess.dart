import 'package:flutter/material.dart';

Widget myLatyouWidget() {
  return Container(
        margin: EdgeInsets.all(16.0),
        padding: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Colors.red,
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
                  child: Icon(Icons.favorite,
                    color: Colors.green,
                  ),
                ),
                Text(
                    'STATELESS WIDGET',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18
                    
                  ),
                ),
              ],
            ),

            // hàng 2 (mục đơn)
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: 16.0,
                horizontal: 0,
              ),
              child: Text('StatelessWidget là một Widget không có trạng thái, nó chỉ được render một lần khi khởi chạy app. StatelessWidget đơn thuần là nhận dữ liệu và hiển thị dữ liệu một cách thụ động',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16
                ),
              ),
            ),

            // hàng 3
            Row(
              children: [
                Text('Nhấn mũi tên để thay đổi',
                style: TextStyle(color: Colors.green[200], fontSize: 16),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Icon(Icons.arrow_forward,
                    color: Colors.green,
                  ),
                ),
              ],
            ),

          ],
        ),
      );
}
