import 'package:freezed_annotation/freezed_annotation.dart';

part 'bloc_state.freezed.dart';

@freezed
sealed class BlocState with _$BlocState {
  const factory BlocState.initial() = InitialState;
  const factory BlocState.loading() = LoadingState;
  const factory BlocState.success(dynamic data) = SuccessState;
  const factory BlocState.error(String errorMessage) = ErrorState;
}
