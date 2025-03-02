import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:post_pilot/src/core/utils/constants/app_colors.dart';
import 'package:post_pilot/src/features/post/Presentation/bloc/post_bloc.dart';
import 'package:widgets_easier/widgets_easier.dart';

class UploadImage extends StatelessWidget {
  const UploadImage({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PostBloc, PostState>(
      builder: (context, state) {
        return InkWell(
          onTap: () {
            context.read<PostBloc>().add(PostEvent.uploadPhoto());
            print("Upload Image");
          },
          borderRadius: BorderRadius.circular(40),
          splashColor: AppColors.primary.withAlpha(50),
          child: Container(
            margin: const EdgeInsets.all(2),
            height: size.height * 0.45,
            width: size.width,
            decoration: ShapeDecoration(
              image: state.image != null
                  ? DecorationImage(
                      image: FileImage(File(state.image!.path)),
                      fit: BoxFit.cover,
                    )
                  : null,
              shape: state.image == null
                  ? DashedBorder(
                      width: 5,
                      dashSize: 9,
                      dashSpacing: 9,
                      color: AppColors.primary,
                      borderRadius: BorderRadius.circular(40),
                    )
                  : RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
            ),
            child: Center(
              child: SingleChildScrollView(
                child: Visibility(
                  visible: state.image == null,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.add_photo_alternate,
                        size: 100,
                        color: AppColors.primary,
                      ),
                      Text(
                        "Select a Image to upload",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: AppColors.primary,
                            fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
