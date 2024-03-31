import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

  //Nombre: Dervin RANSIEL MENDEZ JIMENEZ
  //Matricula: 2020-10715

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Datos de Ubicación',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LocationForm(),
    );
  }
}

class LocationForm extends StatefulWidget {
  @override
  _LocationFormState createState() => _LocationFormState();
}

class _LocationFormState extends State<LocationForm> {
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _latitudeController = TextEditingController();
  final TextEditingController _longitudeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Datos de Ubicación'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextField(
              controller: _firstNameController,
              decoration: InputDecoration(labelText: 'Nombre'),
            ),
            TextField(
              controller: _lastNameController,
              decoration: InputDecoration(labelText: 'Apellido'),
            ),
            TextField(
              controller: _latitudeController,
              decoration: InputDecoration(labelText: 'Latitud'),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: _longitudeController,
              decoration: InputDecoration(labelText: 'Longitud'),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // los valores ingresados en los campos
                String firstName = _firstNameController.text;
                String lastName = _lastNameController.text;
                double latitude = double.tryParse(_latitudeController.text) ?? 0.0;
                double longitude = double.tryParse(_longitudeController.text) ?? 0.0;
                
                // Para imprimirlos para verificar
                print('Nombre: $firstName');
                print('Apellido: $lastName');
                print('Latitud: $latitude');
                print('Longitud: $longitude');
              },
              child: Text('Enviar'),
            ),
          ],
        ),
      ),
    );
  }   

  @override
  void dispose() {
    _firstNameController.dispose();
    _lastNameController.dispose();
    _latitudeController.dispose();
    _longitudeController.dispose();
    super.dispose();
  }
}  

