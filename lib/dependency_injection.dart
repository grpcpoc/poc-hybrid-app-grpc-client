import 'package:poc_hybrid_app_grpc_client/application/user/user.dart';
import 'package:poc_hybrid_app_grpc_client/presentation/user/controllers/create_user.dart';
import 'package:poc_hybrid_app_grpc_client/presentation/user/screens/create_user_bidirectional.dart';
import 'package:poc_hybrid_app_grpc_client/presentation/user/screens/create_user_client_stream.dart';
import 'package:poc_hybrid_app_grpc_client/presentation/user/screens/create_user_rest.dart';
import 'package:poc_hybrid_app_grpc_client/presentation/user/screens/create_user_server_stream.dart';
import 'package:poc_hybrid_app_grpc_client/presentation/user/screens/create_user_unary.dart';
import 'package:poc_hybrid_app_grpc_client/repository/proto/service.pbgrpc.dart';
import 'package:poc_hybrid_app_grpc_client/repository/user_api.dart';
import 'package:grpc/grpc.dart';

class InjectionContainer {
  late CreateUserRestScreen createUserRestScreen;
  late CreateUserUnaryScreen createUserUnaryScreen;
  late CreateUserServerStreamScreen createUserServerStreamScreen;
  late CreateUserClientStreamScreen createUserClientStreamScreen;
  late CreateUserBidirectionalStreamScreen createUserBidirectionalScreen;
}

class DependencyInjection {
  InjectionContainer inject() {
    InjectionContainer container = InjectionContainer();
    final channel = ClientChannel("localhost",
        port: 50052,
        options:
            const ChannelOptions(credentials: ChannelCredentials.insecure()));
    var userServiceClient = UserServiceClient(channel);
    UserApiRepository userApiRepository = UserApiRepository(userServiceClient);
    UserService userService = UserService(userApiRepository);
    CreateUserController createUserController =
        CreateUserController(userService);
    container.createUserRestScreen = CreateUserRestScreen(createUserController);
    container.createUserUnaryScreen =
        CreateUserUnaryScreen(createUserController);
    container.createUserServerStreamScreen =
        CreateUserServerStreamScreen(createUserController);
    container.createUserClientStreamScreen =
        CreateUserClientStreamScreen(createUserController);
    container.createUserBidirectionalScreen =
        CreateUserBidirectionalStreamScreen(createUserController);
    return container;
  }
}
