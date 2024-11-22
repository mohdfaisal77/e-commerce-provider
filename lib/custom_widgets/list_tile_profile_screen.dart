import 'package:flutter/material.dart';

class ListTileProfileScreen extends StatelessWidget {


  final String title;
  final String subtitle;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(
          color: Color(0xFF222222),
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
      subtitle: Text(
        subtitle,
        style: TextStyle(
          color: Color(0xFF9B9B9B),
          fontSize: 11,
          fontWeight: FontWeight.normal,
        ),
      ),
      trailing: GestureDetector(
        onTap: onTap,
       child: Icon(Icons.arrow_forward_ios_outlined),
      ),
      contentPadding: EdgeInsets.symmetric(horizontal: 5),
    );
  }

  const ListTileProfileScreen({
    required this.title,
    required this.subtitle,
    required this.onTap,
  });
}