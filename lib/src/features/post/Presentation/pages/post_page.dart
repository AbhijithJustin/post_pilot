import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:post_pilot/src/core/utils/constants/app_colors.dart';
import 'package:post_pilot/src/core/widgets/app_sized_box.dart';
import 'package:post_pilot/src/features/post/Presentation/bloc/post_bloc.dart';
import 'package:post_pilot/src/features/post/Presentation/widgets/post_test_field.dart';
import 'package:post_pilot/src/features/post/Presentation/widgets/social_medea_grid.dart';

import '../widgets/upload_image.dart';

class PostPage extends StatelessWidget {
  const PostPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return BlocProvider(
      create: (context) => PostBloc(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Post'),
        ),
        body: SafeArea(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
            child: SizedBox(
              width: double.infinity,
              child: BlocBuilder<PostBloc, PostState>(
                builder: (context, state) {
                  return ListView(
                    children: [
                      UploadImage(size: size),
                      AppSizedBox.hMedium,
                      Column(
                        children: [
                          Visibility(
                            visible: state.isPostTextEmpty,
                            child: Text(
                              'Place Enter Your Post Description',
                              style: TextStyle(
                                color: Colors.red,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          PostTextField(
                            onChanged: (value) {
                              context
                                  .read<PostBloc>()
                                  .add(PostEvent.postTextNotifier());
                            },
                            postTextController: state.postTextController,
                            color: state.isPostTextEmpty
                                ? Colors.red
                                : AppColors.primary,
                          ),
                        ],
                      ),
                      AppSizedBox.hMedium,
                      SocialMediaGrid(),
                      AppSizedBox.hMedium,
                      ElevatedButton(
                        onPressed: () {
                          // Navigator.pop(context);

                          context.read<PostBloc>().add(UpdatePostText());
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.primary,
                          minimumSize: Size(double.infinity, 50),
                        ),
                        child: Text(
                          'Post',
                          style: TextStyle(
                            color: AppColors.background,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      AppSizedBox.hMedium
                    ],
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
