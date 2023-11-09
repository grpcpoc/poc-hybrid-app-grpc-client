class ApplicationUser {
  int? id;
  String? username;
  String? firstName;
  String? lastName;
  String? email;
  String? phone;
  DateTime? birthDate;
  String? country;
  String? city;
  String? state;
  String? address;
  String? postalCode;

  ApplicationUser({
    required this.id,
    required this.username,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.phone,
    required this.birthDate,
    required this.country,
    required this.city,
    required this.state,
    required this.address,
    required this.postalCode,
  });
}
