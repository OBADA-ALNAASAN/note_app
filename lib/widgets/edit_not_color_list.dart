import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/model/note_model.dart';
import 'package:note_app/widgets/color_list_view.dart';

class EditNotColorList extends StatefulWidget {
  const EditNotColorList({super.key, required this.note});
  final NoteModel note;
  @override
  State<EditNotColorList> createState() => _EditNotColorListState();
}

class _EditNotColorListState extends State<EditNotColorList> {
  late int currentIndex;
  @override
  void initState() {
    currentIndex = colors.indexOf(Color(widget.note.color));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32 * 2,
      child: ListView.builder(
        itemCount: colors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: GestureDetector(
              onTap: () {
                currentIndex = index;
                widget.note.color = colors[index].value;
                setState(() {});
              },
              child: ColorItem(
                isActive: currentIndex == index,
                color: colors[index],
              ),
            ),
          );
        },
      ),
    );
  }
}
