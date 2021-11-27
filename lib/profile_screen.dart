import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildProfileImage(context),
        _buildProfileDetails(context),
        _buildActions(context)
      ],
    );
  }

  Widget _buildProfileImage(BuildContext context) {
    return Container();
  }

  Widget _buildProfileDetails(BuildContext context) {
    return Container();
  }

  Widget _buildActions(BuildContext context) {
    return Container();
  }
}
