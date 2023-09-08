import 'package:d_bloc/state/d_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DCubit extends Cubit<BlocState> {
  DCubit({BlocState? blocState}) : super(blocState ?? const InitialState());

  void executeAsyncAction(Future<void> Function() action,
      [Function(Object e)? errorAction, bool showLoading = true]) async {
    if (showLoading) {
      emit(const LoadingState());
    }
    try {
      await action();
    } catch (e) {
      if (errorAction != null) {
        errorAction(e);
      } else {
        emit(ErrorState(error: e.toString()));
      }
    }
  }

  void executeNormalAction(void Function() action,
      [Function(Object e)? errorAction, bool showLoading = true]) {
    if (showLoading) {
      emit(const LoadingState());
    }
    try {
      action();
    } catch (e) {
      if (errorAction != null) {
        errorAction(e);
      } else {
        emit(ErrorState(error: e.toString()));
      }
    }
  }
}
