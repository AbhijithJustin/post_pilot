part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.started() = _Started;
  const factory HomeEvent.bottomNavigationTapped(int index) =
      BottomNavigationTapped;
  const factory HomeEvent.getDataForChart() = GetDataForChart;
  const factory HomeEvent.socialMediaTapped(
      {required int index, required BuildContext context}) = SocialMediaTapped;
}
