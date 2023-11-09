import 'package:flutter/material.dart';
import 'package:poc_hybrid_app_grpc_client/dependency_injection.dart';
import 'package:poc_hybrid_app_grpc_client/presentation/user/screens/home.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  DependencyInjection di = DependencyInjection();
  InjectionContainer container = di.inject();
  runApp(Application(container));
}

class Application extends StatelessWidget {
  const Application(this.container, {super.key});

  final InjectionContainer container;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo gRPC Hybrid App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: HomeScreen(title: 'Demo gRPC Hybrid App', container: container),
    );
  }
}
