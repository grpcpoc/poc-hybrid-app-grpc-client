import 'dart:async';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pluto_grid/pluto_grid.dart';

import '../controllers/create_user.dart';
import '../state/create_user.dart';
import '../widgets/user_form.dart';

class CreateUserClientStreamScreen extends StatefulWidget {
  final CreateUserController _controller;

  const CreateUserClientStreamScreen(
    this._controller, {
    super.key,
  });

  @override
  State<StatefulWidget> createState() {
    return _CreateUserClientStreamState();
  }
}

class _CreateUserClientStreamState extends State<CreateUserClientStreamScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  CreateUserState _state = CreateUserState();
  final List<PlutoRow> _savedUsers = List.empty(growable: true);
  late StreamController<CreateUserState> _createUserStreamController;

  final List<PlutoColumn> columnsPendingCreation = [];
  final List<PlutoColumn> columnsSavedUsers = [];
  final List<PlutoRow> rowsPendingCreation = [];
  final List<PlutoRow> rowsSavedUsers = [];
  late PlutoGridStateManager stateManagerPendingCreation;
  late PlutoGridStateManager stateManagerSavedUsers;

  @override
  void initState() {
    super.initState();

    columnsPendingCreation.addAll([
      PlutoColumn(
          title: 'Username',
          field: 'username',
          type: PlutoColumnType.text(),
          width: 170),
      PlutoColumn(
          title: 'First Name',
          field: 'firstName',
          type: PlutoColumnType.text(),
          width: 120),
      PlutoColumn(
          title: 'Last Name',
          field: 'lastName',
          type: PlutoColumnType.text(),
          width: 120),
      PlutoColumn(
          title: 'Email',
          field: 'email',
          type: PlutoColumnType.text(),
          width: 160),
      PlutoColumn(
          title: 'Phone',
          field: 'phone',
          type: PlutoColumnType.text(),
          width: 130),
      PlutoColumn(
          title: 'Birth Date',
          field: 'birthDate',
          type: PlutoColumnType.date(),
          width: 110),
      PlutoColumn(
          title: 'Country',
          field: 'country',
          type: PlutoColumnType.text(),
          width: 70),
      PlutoColumn(
          title: 'City',
          field: 'city',
          type: PlutoColumnType.text(),
          width: 80),
      PlutoColumn(
          title: 'State',
          field: 'state',
          type: PlutoColumnType.text(),
          width: 80),
      PlutoColumn(
          title: 'Address',
          field: 'address',
          type: PlutoColumnType.text(),
          width: 110),
      PlutoColumn(
          title: 'Postal code',
          field: 'postalCode',
          type: PlutoColumnType.text(),
          width: 80),
    ]);

    columnsSavedUsers.addAll([
      PlutoColumn(
          title: 'ID', field: 'id', type: PlutoColumnType.number(), width: 60),
      PlutoColumn(
          title: 'Username',
          field: 'username',
          type: PlutoColumnType.text(),
          width: 170),
      PlutoColumn(
          title: 'First Name',
          field: 'firstName',
          type: PlutoColumnType.text(),
          width: 120),
      PlutoColumn(
          title: 'Last Name',
          field: 'lastName',
          type: PlutoColumnType.text(),
          width: 120),
      PlutoColumn(
          title: 'Email',
          field: 'email',
          type: PlutoColumnType.text(),
          width: 160),
      PlutoColumn(
          title: 'Phone',
          field: 'phone',
          type: PlutoColumnType.text(),
          width: 130),
      PlutoColumn(
          title: 'Birth Date',
          field: 'birthDate',
          type: PlutoColumnType.date(),
          width: 110),
      PlutoColumn(
          title: 'Country',
          field: 'country',
          type: PlutoColumnType.text(),
          width: 70),
      PlutoColumn(
          title: 'City',
          field: 'city',
          type: PlutoColumnType.text(),
          width: 80),
      PlutoColumn(
          title: 'State',
          field: 'state',
          type: PlutoColumnType.text(),
          width: 80),
      PlutoColumn(
          title: 'Address',
          field: 'address',
          type: PlutoColumnType.text(),
          width: 110),
      PlutoColumn(
          title: 'Postal code',
          field: 'postalCode',
          type: PlutoColumnType.text(),
          width: 80),
    ]);

    initializeStream();
  }

  @override
  void dispose() {
    super.dispose();
    _createUserStreamController.close();
  }

  void initializeStream() {
    _createUserStreamController = StreamController();
    var futureCreatedUsers = widget._controller.createUsersClientStream(
        requestStreamController: _createUserStreamController.stream);
    futureCreatedUsers.then((value) {
      if (value.isNotEmpty) {
        final fetchedRows = value.map<PlutoRow>((rowData) {
          return PlutoRow.fromJson(rowData.toJson());
        }).toList();
        setState(() {
          _savedUsers.addAll(fetchedRows);
        });
        stateManagerSavedUsers.refRows.addAll(_savedUsers);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Text(
          "Client Stream Demo",
          style: TextStyle(fontSize: 24.0),
        ),
        SizedBox(
          width: 2000.0, // Set a fixed width
          height: 350.0, // Set a fixed height
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: PlutoGrid(
              columns: columnsPendingCreation,
              rows: rowsPendingCreation,
              onLoaded: (PlutoGridOnLoadedEvent event) {
                stateManagerPendingCreation = event.stateManager;
              },
              configuration: const PlutoGridConfiguration(),
            ),
          ),
        ),
        SizedBox(
          width: 2000.0, // Set a fixed width
          height: 350.0, // Set a fixed height
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: PlutoGrid(
              columns: columnsPendingCreation,
              rows: rowsSavedUsers,
              onLoaded: (PlutoGridOnLoadedEvent event) {
                stateManagerSavedUsers = event.stateManager;
              },
              configuration: const PlutoGridConfiguration(),
            ),
          ),
        ),
        CreateUserForm(
            formKey: _formKey,
            onCacheUserPressed: () async {
              for (int i = 1; i <= 5; i++) {
                var rng = Random();
                _state.username = "someUsername${rng.nextInt(10000)}";
                _state.firstName = "firstName${rng.nextInt(10000)}";
                _state.lastName = "lastName${rng.nextInt(10000)}";
                _state.email = "user${rng.nextInt(10000)}@email.com";
                _state.phone = "+3466${rng.nextInt(9)}112233";
                _state.birthDate = DateTime.now();
                _state.country = "Spain";
                _state.city = "Madrid";
                _state.state = "Madrid";
                _state.address = "street${rng.nextInt(10000)}";
                _state.postalCode = "${10000 + rng.nextInt(99999 - 10000)}";
                _createUserStreamController.add(_state);
                await Future.delayed(const Duration(seconds: 1));
                stateManagerPendingCreation.refRows
                    .add(PlutoRow.fromJson(_state.toJson()));
                setState(() {
                  _state = CreateUserState();
                  _formKey.currentState?.reset();
                });
              }
            },
            onServerStoreRandomData: () async {
              _createUserStreamController.close();
              initializeStream();
            }),
      ],
    );
  }
}
