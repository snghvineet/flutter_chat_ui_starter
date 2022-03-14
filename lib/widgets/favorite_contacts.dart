import 'package:flutter/material.dart';
import 'package:flutter_chat_ui_starter/helpers/color_data.dart';
import 'package:flutter_chat_ui_starter/models/message_model.dart';
import 'package:flutter_chat_ui_starter/widgets/contact_profile.dart';

class FavoriteContacts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Favorite contacts',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: ColorData.textPrimary,
                    letterSpacing: 1.0,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.more_horiz,
                    color: ColorData.textPrimary,
                  ),
                  iconSize: 24.0,
                ),
              ],
            ),
          ),
          Container(
            height: 120,
            child: ListView.builder(
              padding: EdgeInsets.only(left: 10.0),
              scrollDirection: Axis.horizontal,
              itemBuilder: (ctx, i) {
                return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ContactProfile(
                    favorites[i].imageUrl,
                    favorites[i].name,
                  ),
                );
              },
              itemCount: favorites.length,
            ),
          )
        ],
      ),
    );
  }
}
