import 'package:contact_app/models/contact_model.dart';
import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class ContactController extends GetxController {
  final contacts = <ContactModel>[].obs;
  Database? _database;

  @override
  void onInit() {
    super.onInit();
    _initDatabase();
  }

  void addContact(ContactModel contact) {
    contacts.add(contact);
    _database!.insert('contacts', contact.toJson());
  }

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
