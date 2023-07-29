import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          _buildProfileImage(context),
          _buildProfileDetails(context),
          _buildActions(context)
        ],
      ),
    );
  }

  Widget _buildProfileImage(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      child: ClipOval(
        child: Image.asset(
          'assets/ygbi.jpg',
          fit: BoxFit.fitHeight,
        ),
      ),
    );
  }

  Widget _buildProfileDetails(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Just Ken',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
            ),
          _buildDetailRow('Age', '18'),
          _buildDetailRow('Status', ('Kenough')),
            //_buildActions(context),
          ],
        ));
  }

  // Widget _buildActions(BuildContext context) {
  //   return Container();
  // }
  Widget _buildDetailRow(String heading, String value ){
    return Row(
      children: [
        Text('$heading ', style: TextStyle(fontWeight: FontWeight.bold)),


        Text('$value')

      ],
    );
  }
  Widget _buildActions(BuildContext context){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildIcon(Icons.restaurant, 'Poor sinned souls'),
        _buildIcon(Icons.favorite, 'Barbie'),
        _buildIcon(Icons.card_travel, 'Mojo Dojo Casa'),
      ],
    );
  }
  Widget _buildIcon(IconData icon, String text){
    return Padding(padding: EdgeInsets.all(20),
    child: Column(
      children: [
        Icon(icon, size: 40,),
        Text(text),
      ],
    ),);
  }
}
