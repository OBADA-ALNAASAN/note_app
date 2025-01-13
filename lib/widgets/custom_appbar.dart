import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(right: 24, left: 24, top: 10),
      child: Row(
        children: [
          Text(
            'Notes',
            style: TextStyle(fontSize: 25),
          ),
          Spacer(),
          CustomSearchIcon()
        ],
      ),
    );
  }
}
