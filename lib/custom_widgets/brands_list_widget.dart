import 'package:flutter/material.dart';

class BrandsList extends StatelessWidget {
  final String? title;
  final String? subTitle;
  final VoidCallback? onTap;
  final Widget? trailing; // Add trailing widget property

  BrandsList({
    super.key,
    this.title,
    this.subTitle,
    this.onTap,
    this.trailing, // Initialize trailing
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListTile(
        title: Text(
          title ?? 'No Title', // Handle null title
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 16,
            color: Color(0xff222222),
          ),
        ),
        subtitle: subTitle != null
            ? Text(
          subTitle!,
          style: TextStyle(fontSize: 14, color: Colors.grey),
        )
            : null, // Handle null subtitle
        trailing: trailing ?? Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey), // Add trailing widget
        dense: true,
        onTap: onTap, // Handle tap event
        contentPadding: EdgeInsets.symmetric(horizontal: 13),
      ),
    );
  }
}
