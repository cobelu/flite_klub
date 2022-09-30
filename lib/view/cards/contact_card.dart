import 'package:flutter/material.dart';

import '../../model/models.dart';

class ContactCard extends StatelessWidget {
  final User user;

  const ContactCard({
    super.key,
    required this.user,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            leading: const Image(
              image: NetworkImage(
                'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
              ),
            ),
            title: Text('${user.firstName} ${user.lastName}'),
            subtitle: const Text('SUBTITLE GOES HERE'),
          ),
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
}
