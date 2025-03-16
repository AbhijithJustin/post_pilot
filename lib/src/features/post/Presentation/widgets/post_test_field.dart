import 'package:flutter/material.dart';

class PostTextField extends StatelessWidget {
  const PostTextField({
    super.key,
    required this.postTextController,
    required this.onChanged,
    required this.color,
  });
  final Color color;
  final Function(String) onChanged;
  final TextEditingController postTextController;
  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      controller: postTextController,
      minLines: 3,
      maxLines: 3,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(30)),
          borderSide: BorderSide(color: color, width: 3),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(30)),
          borderSide: BorderSide(color: color, width: 5),
        ),
        hintText: 'Enter post dissipation',
        contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
      ),
      keyboardType: TextInputType.text,
    );
  }
}
