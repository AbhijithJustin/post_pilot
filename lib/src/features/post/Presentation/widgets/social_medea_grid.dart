import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:post_pilot/src/core/utils/constants/app_colors.dart';
import 'package:post_pilot/src/features/post/Presentation/bloc/post_bloc.dart';

class SocialMediaGrid extends StatelessWidget {
  SocialMediaGrid({
    super.key,
    required this.color,
  });

  final _socialMediaList = [
    Brands.instagram,
    Brands.facebook,
    Brands.twitter,
    Brands.linkedin,
  ];
  final Color color;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PostBloc, PostState>(
      builder: (context, state) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            border: Border.all(
              color: color,
              width: state.isSocialMediaSelected ? 5 : 0,
            ),
          ),
          child: GridView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: _socialMediaList.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            itemBuilder: (context, index) {
              final isSelected = state.selectedIndex.contains(index);
              return InkWell(
                splashColor: AppColors.primary.withAlpha(50),
                borderRadius: BorderRadius.circular(30),
                onTap: () {
                  context
                      .read<PostBloc>()
                      .add(PostEvent.socialMediaSelector(index));
                  context.read<PostBloc>().add(SocialMediaSelectorNotifier());
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(
                      color:
                          isSelected ? AppColors.primary : AppColors.background,
                      width: 5,
                    ),
                  ),
                  child: Center(
                    child: Brand(
                      _socialMediaList[index],
                      size: 100,
                    ),
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
