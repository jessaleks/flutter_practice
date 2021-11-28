import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      children: [
        Image.asset('assets/713678.jpg'),
        Transform.translate(
          offset: const Offset(0, 100),
          child: Column(
            children: [
              _buildProfileImage(context),
              _buildProfileDetails(context),
              _buildActions(context)
            ],
          ),
        )
      ],
    );
  }

  Widget _buildProfileImage(BuildContext context) {
    return SizedBox(
        width: 200,
        height: 200,
        child: ClipOval(
            child: Image.asset(
          'assets/713678.jpg',
          fit: BoxFit.cover,
        )));
  }

  Widget _buildProfileDetails(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Lorem Ipsum",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
          ),
          _buildDetailsRow('Age', '4'),
          _buildDetailsRow('Status', 'Good Boy')
        ],
      ),
    );
  }

  Widget _buildActions(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildIcon(Icons.restaurant, 'Feed'),
        _buildIcon(Icons.favorite, 'Pet'),
        _buildIcon(Icons.directions_walk, 'Walk'),
      ],
    );
  }
}

Widget _buildDetailsRow(String heading, String value) {
  return Row(
    children: <Widget>[
      Text(
        '$heading: ',
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          overflow: TextOverflow.fade,
          fontSize: 15,
        ),
      ),
      Text(value, softWrap: true, style: const TextStyle(fontSize: 15)),
    ],
  );
}

Widget _buildIcon(IconData icon, String text) {
  return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Icon(icon, size: 40),
          Text(text, style: const TextStyle(fontSize: 20))
        ],
      ));
}
