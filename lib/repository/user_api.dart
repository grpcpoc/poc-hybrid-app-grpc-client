import 'dart:async';
import 'dart:convert';

import 'package:poc_hybrid_app_grpc_client/domain/user.dart';
import 'package:poc_hybrid_app_grpc_client/dto/user_request.dart';
import 'package:poc_hybrid_app_grpc_client/presentation/user/state/create_user.dart';
import 'package:poc_hybrid_app_grpc_client/repository/proto/service.pbgrpc.dart';
import 'package:grpc/grpc.dart';
import 'package:http/http.dart' as http;

import 'google/protobuf/timestamp.pb.dart';

class UserApiRepository {
  UserApiRepository(this._userServiceClient);

  final UserServiceClient _userServiceClient;

  Future<List<ApplicationUser>> bulkLoadGetUsersRest() async {
    final http.Response httpResponse = await http.get(
      Uri.http('localhost:8000', 'users'),
      headers: {
        "Access-Control-Allow-Origin": "*",
        'Content-Type': 'application/json',
        'Accept': '*/*'
      },
    );
    List<UsersResponse> getUsersResponse = List.empty(growable: true);
    if (httpResponse.statusCode == 200) {
      final Map<String, dynamic> responseData = json.decode(httpResponse.body);
      var usersResponseBody = List<UsersResponse>.from(responseData["users"]
          .map((userJson) => UsersResponse.fromJson(userJson)));
      getUsersResponse.addAll(usersResponseBody);
    } else {
      throw Exception(
          'Failed to make POST REST call: ${httpResponse.statusCode}');
    }
    List<ApplicationUser> createdUsers = List.empty(growable: true);
    for (UsersResponse user in getUsersResponse) {
      createdUsers.add(ApplicationUser(
          id: user.id,
          username: user.username,
          firstName: user.firstName,
          lastName: user.lastName,
          email: user.email,
          phone: user.phone,
          birthDate: user.birthDate,
          country: user.country,
          city: user.city,
          state: user.state,
          address: user.address,
          postalCode: user.postalCode));
    }
    return createdUsers;
  }

  Future<List<ApplicationUser>> bulkLoadCreateUserRest(
      {users = List<ApplicationUser>}) async {
    List<UserDto> bulkLoadUsers = List.empty(growable: true);
    for (ApplicationUser user in users) {
      bulkLoadUsers.add(UserDto(
          username: user.username,
          firstName: user.firstName,
          lastName: user.lastName,
          email: user.email,
          phone: user.phone,
          birthDate: Timestamp.fromDateTime(
              user.birthDate ?? DateTime.fromMillisecondsSinceEpoch(0)),
          address: AddressDto(
              country: user.country,
              city: user.city,
              state: user.state,
              address: user.address,
              postalCode: user.postalCode)));
    }
    var request = BulkLoadUserRequest(users: bulkLoadUsers);
    var body = jsonEncode(request.toJson());
    final http.Response httpResponse = await http.post(
      Uri.http('localhost:8000', 'user/bulk'),
      headers: {
        "Access-Control-Allow-Origin": "*",
        'Content-Type': 'application/json',
        'Accept': '*/*'
      },
      body: body,
    );
    List<UsersResponse> createdUsersResponse = List.empty(growable: true);
    if (httpResponse.statusCode == 200) {
      final Map<String, dynamic> responseData = json.decode(httpResponse.body);
      var createdUsersResponseBody = List<UsersResponse>.from(
          responseData["createdUsers"]
              .map((userJson) => UsersResponse.fromJson(userJson)));
      createdUsersResponse.addAll(createdUsersResponseBody);
    } else {
      throw Exception(
          'Failed to make POST REST call: ${httpResponse.statusCode}');
    }
    List<ApplicationUser> createdUsers = List.empty(growable: true);
    for (UsersResponse user in createdUsersResponse) {
      createdUsers.add(ApplicationUser(
          id: user.id,
          username: user.username,
          firstName: user.firstName,
          lastName: user.lastName,
          email: user.email,
          phone: user.phone,
          birthDate: user.birthDate,
          country: user.country,
          city: user.city,
          state: user.state,
          address: user.address,
          postalCode: user.postalCode));
    }
    return createdUsers;
  }

  Future<List<ApplicationUser>> bulkLoadCreateUserUnary(
      {users = List<ApplicationUser>}) async {
    List<User> bulkLoadUsers = List.empty(growable: true);
    for (ApplicationUser user in users) {
      bulkLoadUsers.add(User(
          username: user.username,
          firstName: user.firstName,
          lastName: user.lastName,
          email: user.email,
          phone: user.phone,
          birthDate: Timestamp.fromDateTime(
              user.birthDate ?? DateTime.fromMillisecondsSinceEpoch(0)),
          address: UserAddress(
              country: user.country,
              city: user.city,
              state: user.state,
              address: user.address,
              postalCode: user.postalCode)));
    }
    var request = UserBulkLoadRequest(users: bulkLoadUsers);
    var response = await _userServiceClient.bulkLoad(request);
    List<ApplicationUser> createdUsers = List.empty(growable: true);
    for (CreatedUser user in response.createdUsers) {
      createdUsers.add(ApplicationUser(
          id: user.id.toInt(),
          username: user.username,
          firstName: user.firstName,
          lastName: user.lastName,
          email: user.email,
          phone: user.phone,
          birthDate: DateTime.fromMillisecondsSinceEpoch(
              user.birthDate.nanos ~/ 1000000),
          country: user.country,
          city: user.city,
          state: user.state,
          address: user.address,
          postalCode: user.postalCode));
    }
    return createdUsers;
  }

  Future<List<ApplicationUser>> bulkLoadCreateUserClientStream(
      {usersStreamController = Stream<ApplicationUser>}) async {
    Stream<User> userRequestStream =
        usersStreamController.asyncMap<User>((user) {
      return User(
          username: user.username,
          firstName: user.firstName,
          lastName: user.lastName,
          email: user.email,
          phone: user.phone,
          birthDate: Timestamp.fromDateTime(
              user.birthDate ?? DateTime.fromMillisecondsSinceEpoch(0)),
          address: UserAddress(
              country: user.country,
              city: user.city,
              state: user.state,
              address: user.address,
              postalCode: user.postalCode));
    });
    UserBulkLoadResponse response =
        await _userServiceClient.bulkLoadClientStream(userRequestStream);
    List<ApplicationUser> createdUsers = List.empty(growable: true);
    for (CreatedUser user in response.createdUsers) {
      createdUsers.add(ApplicationUser(
          id: user.id.toInt(),
          username: user.username,
          firstName: user.firstName,
          lastName: user.lastName,
          email: user.email,
          phone: user.phone,
          birthDate: DateTime.fromMillisecondsSinceEpoch(
              user.birthDate.nanos ~/ 1000000),
          country: user.country,
          city: user.city,
          state: user.state,
          address: user.address,
          postalCode: user.postalCode));
    }
    return createdUsers;
  }

  Stream<ApplicationUser> bulkLoadCreateUserServerStream({
    users = List<ApplicationUser>,
  }) async* {
    List<User> bulkLoadUsers = List.empty(growable: true);
    for (ApplicationUser user in users) {
      bulkLoadUsers.add(User(
          username: user.username,
          firstName: user.firstName,
          lastName: user.lastName,
          email: user.email,
          phone: user.phone,
          birthDate: Timestamp.fromDateTime(
              user.birthDate ?? DateTime.fromMillisecondsSinceEpoch(0)),
          address: UserAddress(
              country: user.country,
              city: user.city,
              state: user.state,
              address: user.address,
              postalCode: user.postalCode)));
    }
    var request = UserBulkLoadRequest(users: bulkLoadUsers);
    await for (var createdUser
        in _userServiceClient.bulkLoadServerStream(request)) {
      ApplicationUser u = ApplicationUser(
          id: createdUser.id.toInt(),
          username: createdUser.username,
          firstName: createdUser.firstName,
          lastName: createdUser.lastName,
          email: createdUser.email,
          phone: createdUser.phone,
          birthDate: DateTime.fromMillisecondsSinceEpoch(
              createdUser.birthDate.nanos ~/ 1000000),
          country: createdUser.country,
          city: createdUser.city,
          state: createdUser.state,
          address: createdUser.address,
          postalCode: createdUser.postalCode);
      yield u;
    }
  }

  Stream<ApplicationUser> bulkLoadCreateUserBidirectionalStream(
      {usersStreamController = Stream<ApplicationUser>}) {
    Stream<User> userRequestStream =
        usersStreamController.asyncMap<User>((user) {
      return User(
          username: user.username,
          firstName: user.firstName,
          lastName: user.lastName,
          email: user.email,
          phone: user.phone,
          birthDate: Timestamp.fromDateTime(
              user.birthDate ?? DateTime.fromMillisecondsSinceEpoch(0)),
          address: UserAddress(
              country: user.country,
              city: user.city,
              state: user.state,
              address: user.address,
              postalCode: user.postalCode));
    });
    ResponseStream<CreatedUser> responseStream =
        _userServiceClient.bulkLoadBidirectionalStream(userRequestStream);
    return responseStream.asyncMap((event) {
      return ApplicationUser(
          id: event.id.toInt(),
          username: event.username,
          firstName: event.firstName,
          lastName: event.lastName,
          email: event.email,
          phone: event.phone,
          birthDate: DateTime.fromMillisecondsSinceEpoch(
              event.birthDate.nanos ~/ 1000000),
          country: event.country,
          city: event.city,
          state: event.state,
          address: event.address,
          postalCode: event.postalCode);
    });
  }
}
