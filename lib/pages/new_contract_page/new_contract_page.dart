import 'package:flutter/material.dart';

class NewContractPage extends StatelessWidget {
  const NewContractPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Contract'),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Name'),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Password'),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
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
