import 'package:contact_app/models/contact_model.dart';
import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class ContactController extends GetxController {
  String name = '';
  String email = '';
  var warningMessage = '...'.obs;
  final contacts = <ContactModel>[].obs;
  Database? _database;

  @override
  void onInit() {
    super.onInit();
    _initDatabase();
  }

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

      _database?.insert(
        'contacts',
        newContact.toJson(),
      );

      Get.back();
    }
  }

  Future<void> loadContacts() async {
    if (_database == null) await _initDatabase();

    final dbContacts = await _database!.query('contacts');
    contacts.value = dbContacts.map((dbContact) {
      return ContactModel(
        dbContact['name'] as String,
        dbContact['email'] as String,
      );
    }).toList();
  }

  Future<void> _initDatabase() async {
    final directory = await getApplicationDocumentsDirectory();
    final path = join(directory.path, 'contacts.db');
    _database = await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) {
        return db.execute(
          'CREATE TABLE contacts(name TEXT, email TEXT)',
        );
      },
    );
  }
}
