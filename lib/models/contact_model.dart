class ContactModel {
  String name;
  String email;

  ContactModel(
    this.name,
    this.email,
  );

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'email': email,
    };
  }
}
