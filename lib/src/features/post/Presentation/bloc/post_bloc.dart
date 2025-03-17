import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:post_pilot/service_locator.dart';
import 'package:post_pilot/src/features/post/data/models/start_auto_model.dart';
import 'package:post_pilot/src/features/post/data/models/update_assets_text_model.dart';
import 'package:post_pilot/src/features/post/domain/usecases/post_usecase.dart';

part 'post_event.dart';
part 'post_state.dart';
part 'post_bloc.freezed.dart';

class PostBloc extends Bloc<PostEvent, PostState> {
  PostBloc() : super(PostState.initial()) {
    on<SocialMediaSelector>((event, emit) {
      final newSelectedIndices = Set<int>.from(state.selectedIndex);
      if (newSelectedIndices.contains(event.index)) {
        newSelectedIndices.remove(event.index);
        switch (event.index) {
          case 0:
            emit(state.copyWith(isInstagramSelected: false));
            break;
          case 1:
            emit(state.copyWith(isFacebookSelected: false));
            break;
          case 2:
            emit(state.copyWith(isTwitterSelected: false));
            break;
          case 3:
            emit(state.copyWith(isLinkedinSelected: false));
            break;
          default:
        }
      } else {
        newSelectedIndices.add(event.index);
        switch (event.index) {
          case 0:
            emit(state.copyWith(isInstagramSelected: true));
            break;
          case 1:
            emit(state.copyWith(isFacebookSelected: true));
            break;
          case 2:
            emit(state.copyWith(isTwitterSelected: true));
            break;
          case 3:
            emit(state.copyWith(isLinkedinSelected: true));
            break;
          default:
        }
      }
      emit(state.copyWith(selectedIndex: newSelectedIndices));
    });
    on<UploadPhoto>((event, emit) async {
      final ImagePicker imagePicker = ImagePicker();
      emit(state.copyWith(
          image: await imagePicker.pickImage(source: ImageSource.gallery)));
    });
    on<PostTextNotifier>((event, emit) {
      if (state.postTextController.text.isEmpty) {
        emit(state.copyWith(isPostTextEmpty: true));
      } else {
        emit(state.copyWith(isPostTextEmpty: false));
      }
    });
    on<UpdatePostText>((event, emit) async {
      if (state.postTextController.text.isNotEmpty) {
        await sl<PostUsecase>().call(
          UpdateAssetsTextModel(
            stringValue: state.postTextController.text,
          ),
        );
        emit(state.copyWith(isPostTextEmpty: false));
      } else {
        emit(state.copyWith(isPostTextEmpty: true));
      }
    });
    on<UploadImageToOrchestrator>((event, emit) async {
      if (state.image != null) {
        await sl<PostUsecase2>().call(state.image!);
        emit(state.copyWith(isImageEmpty: false));
      } else {
        emit(state.copyWith(isImageEmpty: true));
      }
    });
    on<StartAutomation>((event, emit) async {
      if (state.isInstagramSelected! ||
          state.isFacebookSelected! ||
          state.isTwitterSelected! ||
          state.isLinkedinSelected!) {
        await sl<PostUsecaseStartAutomation>().call(StartAutoModel(
            isInstagramSelected: state.isInstagramSelected!,
            isFacebookSelected: state.isFacebookSelected!,
            isTwitterSelected: state.isTwitterSelected!,
            isLinkedinSelected: state.isLinkedinSelected!));

        emit(state.copyWith(isSocialMediaSelected: false));
      } else {
        emit(state.copyWith(isSocialMediaSelected: true));
      }
    });
    on<SocialMediaSelectorNotifier>((event, emit) async {
      if (state.isInstagramSelected! ||
          state.isFacebookSelected! ||
          state.isTwitterSelected! ||
          state.isLinkedinSelected!) {
        emit(state.copyWith(isSocialMediaSelected: false));
      } else {
        emit(state.copyWith(isSocialMediaSelected: true));
      }
    });

    on<SlideButtonAction>((event, emit) {
      emit(state.copyWith(isEnabledToPost: event.value));
    });
  }
}
