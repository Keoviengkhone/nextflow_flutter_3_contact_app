import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('บ้าน'),
        //ใส่ปุ่มเพิ่ม และใส่ icon add ใน appbar
        actions: [
          IconButton(
            onPressed: () {
              Get.toNamed('/new-contact');
            },
            icon: Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
