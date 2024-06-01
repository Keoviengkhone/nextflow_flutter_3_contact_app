import 'package:contact_app/controllers/contact_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  var contactController = Get.find<ContactController>();

  @override
  Widget build(BuildContext context) {
    contactController.loadContacts();

    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        actions: [
          IconButton(
            onPressed: () {
              Get.toNamed('/new-contact');
            },
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      // show listview of contacts from contact controller with Obx widget
      body: Obx(
        () => ListView.builder(
          itemCount: contactController.contacts.length,
          itemBuilder: (context, index) {
            var contact = contactController.contacts[index];
            return ListTile(
              title: Text(contact.name),
              subtitle: Text(contact.email),
            );
          },
        ),
      ),
    );
  }
}
