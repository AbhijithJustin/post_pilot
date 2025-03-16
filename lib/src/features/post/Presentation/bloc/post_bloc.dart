import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';

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
  }
}
