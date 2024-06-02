import 'package:contact_app/models/contact_model.dart';
import 'package:get/get.dart';

class ContactController extends GetxController {
  String name = '';
  String email = '';
  var warningMessage = '...'.obs;
  final contacts = <ContactModel>[].obs;

  void save() {
    print('name: ${name}');
    print('email: ${email}');

    if (name.isEmpty || email.isEmpty) {
      warningMessage.value = 'please fill the form';
      print(warningMessage);
    } else {
      var newContact = ContactModel(
        name,
        email,
      );
      contacts.add(newContact);

      Get.back();
    }
  }
}
