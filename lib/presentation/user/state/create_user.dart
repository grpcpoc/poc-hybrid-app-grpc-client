import 'package:poc_hybrid_app_grpc_client/domain/user.dart';

class CreateUserState {
  CreateUserState();

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

  ApplicationUser toUser() {
    return ApplicationUser(
      id: id ?? -1,
      username: username ?? "",
      firstName: firstName ?? "",
      lastName: lastName ?? "",
      email: email ?? "",
      phone: phone ?? "",
      birthDate: birthDate ?? DateTime.now(),
      country: country ?? "",
      city: city ?? "",
      state: state ?? "",
      address: address ?? "",
      postalCode: postalCode ?? "",
    );
  }

  int calculateSizeInBytes() {
    int size = 0;
    size += (username != null) ? (username!.length * 2) : 0;
    size += (firstName != null) ? (firstName!.length * 2) : 0;
    size += (lastName != null) ? (lastName!.length * 2) : 0;
    size += (email != null) ? (email!.length * 2) : 0;
    size += (phone != null) ? (phone!.length * 2) : 0;
    size += 8; // datetime
    size += (country != null) ? (country!.length * 2) : 0;
    size += (city != null) ? (city!.length * 2) : 0;
    size += (state != null) ? (state!.length * 2) : 0;
    size += (address != null) ? (address!.length * 2) : 0;
    size += (postalCode != null) ? (postalCode!.length * 2) : 0;
    return size;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {
      'username': username,
      'firstName': firstName,
      'lastName': lastName,
      'email': email,
      'phone': phone,
      'birthDate': birthDate?.toIso8601String(),
      'country': country,
      'city': city,
      'state': state,
      'address': address,
      'postalCode': postalCode,
    };
    data.removeWhere((key, value) => value == null);
    return data;
  }
}

class UsersResponse {
  UsersResponse(
      this.id,
      this.username,
      this.firstName,
      this.lastName,
      this.email,
      this.phone,
      this.birthDate,
      this.country,
      this.city,
      this.state,
      this.address,
      this.postalCode);
  factory UsersResponse.fromJson(Map<String, dynamic> json) {
    return UsersResponse(
        json['id'],
        json['username'],
        json['firstName'],
        json['lastName'],
        json['email'],
        json['phone'],
        DateTime.parse(json['birthDate']),
        json['country'],
        json['city'],
        json['state'],
        json['address'],
        json['postalCode']);
  }

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

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {
      'id': id,
      'username': username,
      'firstName': firstName,
      'lastName': lastName,
      'email': email,
      'phone': phone,
      'birthDate': birthDate?.toIso8601String(),
      'country': country,
      'city': city,
      'state': state,
      'address': address,
      'postalCode': postalCode,
    };
    data.removeWhere((key, value) => value == null);
    return data;
  }
}
