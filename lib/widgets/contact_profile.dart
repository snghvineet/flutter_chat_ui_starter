import 'package:flutter/material.dart';
import 'package:flutter_chat_ui_starter/helpers/color_data.dart';

class ContactProfile extends StatelessWidget {
  final String imageUrl;
  final String name;
  ContactProfile(this.imageUrl, this.name);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage(imageUrl),
          radius: 35.0,
        ),
        SizedBox(
          height: 6.0,
        ),
        Text(
          name,
          style: TextStyle(
            fontSize: 16.0,
            color: ColorData.textPrimary,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
