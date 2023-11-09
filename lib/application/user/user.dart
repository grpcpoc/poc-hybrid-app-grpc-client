import 'dart:async';

import 'package:poc_hybrid_app_grpc_client/domain/user.dart';
import 'package:poc_hybrid_app_grpc_client/repository/user_api.dart';

class UserService {
  UserService(this._userApiRepository);

  final UserApiRepository _userApiRepository;

  Future<List<ApplicationUser>> bulkLoadGetUsersRest() {
    return _userApiRepository.bulkLoadGetUsersRest();
  }

  Future<List<ApplicationUser>> bulkLoadCreateUsersRest(
      {users = List<ApplicationUser>}) {
    return _userApiRepository.bulkLoadCreateUserRest(users: users);
  }

  Future<List<ApplicationUser>> bulkLoadCreateUsersUnary(
      {users = List<ApplicationUser>}) {
    return _userApiRepository.bulkLoadCreateUserUnary(users: users);
  }

  Stream<ApplicationUser> bulkLoadCreateUsersServerStream(
      {users = List<ApplicationUser>}) {
    return _userApiRepository.bulkLoadCreateUserServerStream(users: users);
  }

  Future<List<ApplicationUser>> bulkLoadCreateUsersClientStream(
      {usersStreamController = Stream<ApplicationUser>}) {
    return _userApiRepository.bulkLoadCreateUserClientStream(
        usersStreamController: usersStreamController);
  }

  Stream<ApplicationUser> bulkLoadCreateUsersBidirectionalStream(
      {usersStreamController = Stream<ApplicationUser>}) {
    return _userApiRepository.bulkLoadCreateUserBidirectionalStream(
        usersStreamController: usersStreamController);
  }
}
