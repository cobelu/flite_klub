import 'package:flutter/material.dart';

class AddClubPage extends StatelessWidget {
  const AddClubPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Club'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // showSearch(
              //   context: context,
              //   delegate: CustomSearchDelegate(),
              // );
            },
          ),
          IconButton(
            icon: const Icon(Icons.near_me),
            onPressed: () => {},
          )
        ],
      ),
      body: TextField(
        // controller: editingController,
        decoration: InputDecoration(
          labelText: "Search",
          hintText: "Search",
          prefixIcon: Icon(Icons.search),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(25.0)),
          ),
        ),
      ),
    );
  }
}
