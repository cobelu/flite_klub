import 'dart:convert';
import 'dart:core';

import 'package:http/http.dart' as http;

// --------------------
// Aircraft
// --------------------
class Aircraft {
  final int id;
  final String name;
  final int year;
  final String make;
  final String model;

  const Aircraft({
    required this.id,
    required this.name,
    required this.year,
    required this.make,
    required this.model,
  });

  factory Aircraft.fromJson(Map<String, dynamic> json) {
    return Aircraft(
      id: json['id'],
      name: json['id'],
      year: json['year'],
      make: json['make'],
      model: json['model'],
    );
  }

  factory Aircraft.example() {
    return const Aircraft(
      id: 1,
      name: "Snoopy",
      year: 1967,
      make: "Cessna",
      model: "172",
    );
  }

  @override
  String toString() {
    return '$name: $year $make $model';
  }
}

Future<Aircraft> fetchAircraft() async {
  final response = await http
      .get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return Aircraft.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}

// --------------------
// Club
// --------------------
class Club {
  final int id;
  final String name;
  final String location;
  final List<Aircraft> aircraft;

  const Club({
    required this.id,
    required this.name,
    required this.location,
    required this.aircraft,
  });

  @override
  String toString() {
    return name;
  }

  factory Club.fromJson(Map<String, dynamic> json) {
    return Club(
      id: json['id'],
      name: json['name'],
      location: json['location'],
      aircraft: [Aircraft.fromJson(json['aircraft'])], // TODO Returns list
    );
  }

  factory Club.example() {
    return Club(
      id: 1,
      name: "TAC",
      location: "KGYI",
      aircraft: [Aircraft.example()],
    );
  }
}

Future<Club> fetchClub() async {
  final response = await http
      .get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return Club.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}

// --------------------
// Reservation
// --------------------
class Reservation {
  final int id;
  final Aircraft aircraft;
  final User member;
  final DateTime startTime;
  final DateTime endTime;

  const Reservation({
    required this.id,
    required this.aircraft,
    required this.member,
    required this.startTime,
    required this.endTime,
  });

  factory Reservation.fromJson(Map<String, dynamic> json) {
    return Reservation(
      id: json['id'],
      aircraft: json['aircraft'],
      // TODO Aircraft parsing
      member: json['member'],
      // TODO Member parsing
      startTime: json['start'],
      endTime: json['end'],
    );
  }

  factory Reservation.example() {
    return Reservation(
      id: 1,
      aircraft: Aircraft.example(),
      member: User.example(),
      startTime: DateTime.now().subtract(const Duration(hours: 1, minutes: 30)),
      endTime: DateTime.now().add(const Duration(hours: 1)),
    );
  }

  @override
  String toString() {
    return '$startTime - $endTime';
  }
}

Future<Reservation> fetchReservation() async {
  final response = await http
      .get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return Reservation.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}

// --------------------
// User
// --------------------
class User {
  final int id;
  final String firstName;
  final String lastName;

  const User({
    required this.id,
    required this.firstName,
    required this.lastName,
  });

  factory User.example() {
    return const User(
      id: 1,
      firstName: "Connor",
      lastName: "Luckett",
    );
  }
}
