// import 'package:freezed_annotation/freezed_annotation.dart';
//
// part 'home_state.freezed.dart';
//
// @freezed
// sealed class HomeState with _$HomeState {
//   const factory HomeState.loading() = LoadingState;
//
//   const factory HomeState.loaded(String data) = LoadedState;
//
//   const factory HomeState.error(String message) = ErrorState;
// }
//
// void main(List<String> args) {
//   HomeState state = const LoadedState('data');
//   switch (state) {
//     case LoadingState():
//       break;
//     case LoadedState mState:
//       var x = mState.data;
//       break;
//     case ErrorState():
//       break;
//   }
// }
