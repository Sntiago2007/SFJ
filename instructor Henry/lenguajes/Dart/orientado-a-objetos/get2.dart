import 'package:http/http.dart' as http;
import 'dart:convert';

class User {
  int? id;
  String? name;
  String? username;
  String? email;
  String? website;
  String? phone;
  Company? company;
  Address? address;

  User(Map<String, dynamic> map) {
    this.id = map['id'];
    this.name = map['name'];
    this.username = map['username'];
    this.email = map['email'];
    this.website = map['website'];
    this.phone = map['phone'];

    Map<String, dynamic> companyMap = map['company'];
    this.company = Company(companyMap);

    Map<String, dynamic> addressMap = map['address'];
    this.address = Address(addressMap);
  }
}

class Company {
  String? name;
  String? catchPhrase;
  String? bs;

  Company(Map<String, dynamic> m) {
    this.name = m['name'];
    this.catchPhrase = m['catchPhrase'];
    this.bs = m['bs'];
  }
}

class Address {
  String? street;
  String? suite;
  String? city;
  String? zipcode;
  Geo? geo;

  Address(Map<String, dynamic> m) {
    this.street = m['street'];
    this.suite = m['suite'];
    this.city = m['city'];
    this.zipcode = m['zipcode'];
    this.geo = Geo(m['geo']);
  }
}

class Geo {
  String? lat;
  String? lng;

  Geo(Map<String, dynamic> m) {
    this.lat = m['lat'];
    this.lng = m['lng'];
  }
}

void main() async {
  print("Ingresa numero de usuario del 1 al 10:");
  int? u = int.parse(stdin.readLineSync()!);
  var url = Uri.https('jsonplaceholder.typicode.com', '/users/$u');
  print('Calculando...');
  var response = await http.get(url);
  print('Response status: ${response.statusCode}');
  //print('Response body: ${response.body}');

  Map<String, dynamic> map = jsonDecode(response.body);
  User user = User(map);

    print('ID: ${user.id}');
    print('Nombre: ${user.name}');
    print('Correo Electrónico: ${user.email}');
}