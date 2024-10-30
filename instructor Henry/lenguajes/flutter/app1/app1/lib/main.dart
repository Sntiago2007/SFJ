import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() => runApp(Homes());

class FutureMap {
  Future<Map<String, dynamic>> getMap(String id) async {
    var url = Uri.http('jsonplaceholder.typicode.com', 'users/$id');
    var response = await http.get(url);
    Map<String, dynamic> map = jsonDecode(response.body);
    return map;
  }
}

class Homes extends StatelessWidget {
  final ids = TextEditingController();
  String id = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home',
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Welcome')),
          backgroundColor: Colors.indigo,
          foregroundColor: Colors.white,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Introduce numero de ID de 1 a 10'),
              SizedBox(
                width: 50,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'ID',
                  ),
                  textAlign: TextAlign.center,
                  controller: ids,
                ),
              ),
              Text(''),
              Builder(
                builder: (context) => FloatingActionButton(
                  backgroundColor: Colors.indigo[100],
                  onPressed: () {
                    id = ids.text;
                    int? userId = int.tryParse(id);
                    
                    // Verifica si el ID es válido y está en el rango permitido
                    if (userId == null || userId < 1 || userId > 10) {
                      // Muestra la pantalla de error si el ID no es válido
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => ErrorScreen()),
                        (Route<dynamic> route) => false,
                      );
                    } else {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => MyApp(id: id)),
                        (Route<dynamic> route) => false,
                      );
                    }
                  },
                  child: Icon(Icons.search, size: 25, color: Colors.white),
                ),
              ),
              Text(''),
            ],
          ),
        ),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  final String id;

  MyApp({required this.id});

  @override
  Widget build(BuildContext context) {
    FutureMap futureMap = FutureMap();

    return MaterialApp(
      title: 'App Json',
      home: Scaffold(
        appBar: AppBar(
          title: Text('App Json'),
          backgroundColor: Colors.deepPurple,
          foregroundColor: Colors.white,
        ),
        body: Center(
          child: FutureBuilder<Map<String, dynamic>?>(
            future: futureMap.getMap(id),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return CircularProgressIndicator();
              } else if (snapshot.hasError) {
                return Text('Error: ${snapshot.error}');
              } else if (snapshot.hasData && snapshot.data != null) {
                Users usuario = Users(snapshot.data!);
                return Home(usuario: usuario);
              } else {
                // Si no se encuentra el usuario, muestra la pantalla de error
                return ErrorScreen();
              }
            },
          ),
        ),
      ),
    );
  }
}


class Loading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircularProgressIndicator(),
          Text(''),
          Builder(
            builder: (context) => ElevatedButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => Homes()),
                  (Route<dynamic> route) => false,
                );
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              ),
              child: const Text(
                'Regresar',
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ErrorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.error, color: Colors.red, size: 80),
          Text(
            'Error: No se encontró el usuario',
            style: TextStyle(fontSize: 18, color: Colors.redAccent),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => Homes()),
                (Route<dynamic> route) => false,
              );
            },
            child: Text('Regresar'),
          ),
        ],
      ),
    );
  }
}

class Home extends StatelessWidget {
  final Users usuario;

  Home({required this.usuario});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('- Usuario -'),
          Text('Id : ${usuario.id}'),
          Text('name: ${usuario.name}'),
          Text('username: ${usuario.username}'),
          Text('email: ${usuario.email}'),
          Text('phone: ${usuario.phone}'),
          Text('website: ${usuario.website}'),
          Text('- Empresa -'),
          Text('nombre: ${usuario.company?.name}'),
          Text('bs: ${usuario.company?.bs}'),
          Text('catchPhrase: ${usuario.company?.catchPhrase}'),
          Text('- Dirección -'),
          Text('street: ${usuario.address?.street}'),
          Text('suite: ${usuario.address?.suite}'),
          Text('city: ${usuario.address?.city}'),
          Text('zipcode: ${usuario.address?.zipcode}'),
          Text('- Geo -'),
          Text('lat: ${usuario.address?.geo?.lat}'),
          Text('lng: ${usuario.address?.geo?.lng}'),
          Builder(
            builder: (context) => ElevatedButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => Homes()),
                  (Route<dynamic> route) => false,
                );
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              ),
              child: Text(
                'Regresar',
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Users {
  int? id;
  String? name;
  String? username;
  String? email;
  String? phone;
  String? website;
  Company? company;
  Address? address;

  Users(Map m) {
    this.id = m['id'];
    this.name = m['name'];
    this.username = m['username'];
    this.email = m['email'];
    this.phone = m['phone'];
    this.website = m['website'];

    Company company = Company(m['company']);
    this.company = company;

    Address address = Address(m['address']);
    this.address = address;
  }
}

class Company {
  String? name;
  String? catchPhrase;
  String? bs;

  Company(Map m) {
    this.bs = m['bs'];
    this.catchPhrase = m['catchPhrase'];
    this.name = m['name'];
  }
}

class Address {
  String? street;
  String? suite;
  String? city;
  String? zipcode;
  Geo? geo;

  Address(Map m) {
    this.street = m['street'];
    this.suite = m['suite'];
    this.city = m['city'];
    this.zipcode = m['zipcode'];
    Geo geo = Geo(m['geo']);
    this.geo = geo;
  }
}

class Geo {
  String? lat;
  String? lng;

  Geo(Map m) {
    this.lat = m['lat'];
    this.lng = m['lng'];
  }
}
