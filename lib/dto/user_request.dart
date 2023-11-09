import 'package:poc_hybrid_app_grpc_client/repository/google/protobuf/timestamp.pb.dart';

class UserDto {
  final String? username;
  final String? firstName;
  final String? lastName;
  final String? email;
  final String? phone;
  final Timestamp? birthDate;
  final AddressDto? address;

  UserDto({
    this.username,
    this.firstName,
    this.lastName,
    this.email,
    this.phone,
    this.birthDate,
    this.address,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {
      'username': username,
      'firstName': firstName,
      'lastName': lastName,
      'email': email,
      'phone': phone,
      'birthDate': birthDate?.toDateTime().toIso8601String(),
      'address': address?.toJson(),
    };
    data.removeWhere((key, value) => value == null);
    return data;
  }
}

class AddressDto {
  final String? country;
  final String? city;
  final String? state;
  final String? address;
  final String? postalCode;

  AddressDto({
    this.country,
    this.city,
    this.state,
    this.address,
    this.postalCode,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {
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

class BulkLoadUserRequest {
  final List<UserDto> users;

  BulkLoadUserRequest({
    required this.users,
  });

  Map<String, dynamic> toJson() {
    return {'users': users.map((user) => user.toJson()).toList()};
  }
}
