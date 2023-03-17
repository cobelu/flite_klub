import 'dart:convert';
import 'dart:core';

import 'package:http/http.dart';

// --------------------
// Aircraft
// --------------------
class Aircraft {
  const Aircraft({
    required this.id,
    required this.name,
    required this.year,
    required this.make,
    required this.model,
  });

  factory Aircraft.fromJson(dynamic json) {
    return Aircraft(
      id: json['id'] as int,
      name: json['name'] as String,
      year: json['year'] as int,
      make: json['make'] as String,
      model: json['model'] as String,
    );
  }

  factory Aircraft.example() {
    return const Aircraft(
      id: 1,
      name: 'Snoopy',
      year: 1967,
      make: 'Cessna',
      model: '172',
    );
  }

  final int id;
  final String name;
  final int year;
  final String make;
  final String model;

  @override
  String toString() {
    return '$name: $year $make $model';
  }
}

Future<Aircraft> fetchAircraft() async {
  final Response response =
      await get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));

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
  const Club({
    required this.id,
    required this.name,
    required this.location,
    required this.aircraft,
  });

  factory Club.example() {
    return Club(
      id: 1,
      name: 'TAC',
      location: 'KGYI',
      aircraft: <Aircraft>[Aircraft.example()],
    );
  }

  factory Club.fromJson(dynamic json) {
    return Club(
      id: json['id'] as int,
      name: json['name'] as String,
      location: json['location'] as String,
      aircraft: <Aircraft>[
        Aircraft.fromJson(json['aircraft']),
      ],
      // TODO(cobelu): Returns list
    );
  }

  final int id;
  final String name;
  final String location;
  final List<Aircraft> aircraft;

  @override
  String toString() {
    return name;
  }
}

Future<Club> fetchClub() async {
  final Response response =
      await get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));

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
  const Reservation({
    required this.id,
    required this.aircraft,
    required this.member,
    required this.startTime,
    required this.endTime,
  });

  factory Reservation.fromJson(dynamic json) {
    return Reservation(
      id: json['id'] as int,
      aircraft: json['aircraft'] as Aircraft,
      // TODO(cobelu): Aircraft parsing
      member: json['member'] as User,
      // TODO(cobelu): Member parsing
      startTime: json['start'] as DateTime,
      endTime: json['end'] as DateTime,
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

  final int id;
  final Aircraft aircraft;
  final User member;
  final DateTime startTime;
  final DateTime endTime;

  @override
  String toString() {
    return '$startTime - $endTime';
  }
}

Future<Reservation> fetchReservation() async {
  final Response response =
      await get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));

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
  const User({
    required this.id,
    required this.firstName,
    required this.lastName,
  });

  factory User.example() {
    return const User(
      id: 1,
      firstName: 'Connor',
      lastName: 'Luckett',
    );
  }

  final int id;
  final String firstName;
  final String lastName;
}
