import 'package:flutter/material.dart';

class NewContactPage extends StatelessWidget {
  const NewContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Contact'),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Text('Name:'),
            TextField(
              decoration: InputDecoration(labelText: 'Name'),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Email'),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: Text('Save'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
