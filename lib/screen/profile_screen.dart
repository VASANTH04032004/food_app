import 'package:flutter/material.dart';
import 'login_screen.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final isProfileCreated = false;

    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: isProfileCreated ? buildProfileContent() : redirectToLogin(context),
    );
  }

  Widget buildProfileContent() {
    return Center(
      child: Text('Profile Content Here'),
    );
  }

  Widget redirectToLogin(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginScreen()),
      );
    });
    return Center(child: Text('Redirecting to Login...'));
  }
}
