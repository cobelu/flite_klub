import 'package:flite_klub/model/models.dart';
import 'package:flite_klub/view/club_screen.dart';
import 'package:flite_klub/view/transitions.dart';
import 'package:flutter/material.dart';

class ClubCard extends StatelessWidget {
  const ClubCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          renderInfo(context, Club.example()),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: const <Widget>[
              SizedBox(width: 8),
            ],
          ),
        ],
      ),
    );
  }

  ListTile renderInfo(BuildContext context, Club club) {
    return ListTile(
      leading: const Image(
        image: NetworkImage(
          'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
        ),
      ),
      title: Text(club.name),
      subtitle: Text(club.location),
      onTap: () => {Navigator.of(context).push(createRoute(ClubPage()))},
    );
  }
}
