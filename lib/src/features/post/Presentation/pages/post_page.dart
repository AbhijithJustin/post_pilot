import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:post_pilot/src/core/utils/constants/app_colors.dart';
import 'package:post_pilot/src/core/widgets/app_sized_box.dart';
import 'package:post_pilot/src/features/post/Presentation/bloc/post_bloc.dart';
import 'package:post_pilot/src/features/post/Presentation/widgets/post_test_field.dart';
import 'package:post_pilot/src/features/post/Presentation/widgets/social_medea_grid.dart';
import 'package:post_pilot/src/features/post/Presentation/widgets/upload_image.dart';

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
          actions: [
            BlocBuilder<PostBloc, PostState>(
              builder: (context, state) {
                return Switch(
                  activeColor: AppColors.primary,
                  inactiveTrackColor: AppColors.background,
                  inactiveThumbColor: AppColors.primary,
                  trackOutlineColor: WidgetStateProperty.all(AppColors.primary),
                  value: state.isEnabledToPost,
                  onChanged: (value) {
                    context.read<PostBloc>().add(SlideButtonAction(value));
                  },
                );
              },
            ),
          ],
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
                      AppSizedBox.hSmall,
                      UploadImage(
                        size: size,
                        color: state.isImageEmpty
                            ? AppColors.error
                            : AppColors.primary,
                      ),
                      AppSizedBox.hMedium,
                      Column(
                        children: [
                          Visibility(
                            visible: state.isPostTextEmpty,
                            child: Text(
                              'Place Enter Your Post Description',
                              style: TextStyle(
                                color: AppColors.error,
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
                                ? AppColors.error
                                : AppColors.primary,
                          ),
                        ],
                      ),
                      AppSizedBox.hMedium,
                      Column(
                        children: [
                          Visibility(
                            visible: state.isSocialMediaSelected,
                            child: Text(
                              'Place Select Social Medias',
                              style: TextStyle(
                                color: AppColors.error,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SocialMediaGrid(
                            color: state.isSocialMediaSelected
                                ? AppColors.error
                                : AppColors.background,
                          ),
                        ],
                      ),
                      AppSizedBox.hMedium,
                      ElevatedButton(
                        onPressed: () {
                          // Navigator.pop(context);
                          if (state.isEnabledToPost) {
                            context.read<PostBloc>().add(UpdatePostText());

                            context
                                .read<PostBloc>()
                                .add(UploadImageToOrchestrator());

                            context.read<PostBloc>().add(StartAutomation());
                          }
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
