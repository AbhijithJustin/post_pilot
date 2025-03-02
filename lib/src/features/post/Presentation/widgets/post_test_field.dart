import 'package:flutter/material.dart';

import 'package:post_pilot/src/core/utils/constants/app_colors.dart';

class PostTextField extends StatelessWidget {
  const PostTextField({
    super.key,
    required this.postTextController,
  });
  final TextEditingController postTextController;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: postTextController,
      minLines: 3,
      maxLines: 3,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(30)),
          borderSide: BorderSide(color: AppColors.primary, width: 3),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(30)),
          borderSide: BorderSide(color: AppColors.primary, width: 5),
        ),
        hintText: 'Enter post dissipation',
        contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
      ),
      keyboardType: TextInputType.text,
    );
  }
}
