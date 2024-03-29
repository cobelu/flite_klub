import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../model/models.dart';
import '../model/time.dart';

class AddReservationPage extends StatefulWidget {
  const AddReservationPage({super.key});

  @override
  State<StatefulWidget> createState() => _AddReservationPageState();
}

class _AddReservationPageState extends State<AddReservationPage> {
  final Reservation _reservation = Reservation.example();

  @override
  Widget build(BuildContext context) {
    final DateFormat formatter = DateFormat('yyyy-MM-dd');
    // TODO(cobelu): Dynamic string
    final String today = formatter.format(DateTime.now());
    return Scaffold(
      appBar: AppBar(
        title: Text(_reservation.aircraft.name),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(children: [
              const Text('From'),
              TextButton(
                onPressed: () => {_selectDate(context)},
                child: Text(today),
              ),
              const Text('@'),
              _dropDown(),
            ]),
            const SizedBox(height: 10),
            Row(children: [
              const Text('To'),
              TextButton(
                onPressed: () => {_selectDate(context)},
                child: Text(today),
              ),
              const Text('@'),
              _dropDown(),
            ]),
            const SizedBox(height: 10),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Notes',
              ),
            ),
            Row(
              children: [
                TextButton(
                  onPressed: () => {Navigator.of(context).pop()},
                  child: const Text('Cancel'),
                ),
                TextButton(
                  onPressed: () => {
                    // TODO Do something and go away
                    Navigator.of(context).pop()
                  },
                  child: const Text('Submit'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Future<void> _selectDate(BuildContext context) async {
    DateTime currentDate = DateTime.now();
    final DateTime? pickedDate = await showDatePicker(
        context: context,
        initialDate: currentDate,
        firstDate: DateTime(2015),
        lastDate: DateTime(2050));
    if (pickedDate != null && pickedDate != currentDate) {
      setState(() {
        currentDate = pickedDate;
      });
    }
  }

  DropdownButton _dropDown() {
    Iterable<String> list = Minutes.values.map((e) => e.value);
    String dropdownValue = list.first;
    return DropdownButton<String>(
        value: dropdownValue,
        // icon: const Icon(Icons.arrow_downward),
        elevation: 16,
        underline: Container(
          height: 2,
        ),
        onChanged: (String? value) {
          // This is called when the user selects an item.
          setState(() {
            dropdownValue = value!;
          });
        },
        items: list.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList());
  }
}
