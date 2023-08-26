import 'package:flutter_bloc/flutter_bloc.dart';

import '../state/bloc_state.dart';

class MCubit extends Cubit<BlocState> {
  MCubit({BlocState? blocState}) : super(blocState ?? const InitialState());

  void handleWithAsyncAction(Future<void> Function() executor,
      {bool showLoading = true}) async {
    if (showLoading) {
      emit(const LoadingState());
    }
    try {
      await executor();
    } catch (e) {
      emit(ErrorState(e.toString()));
    }
  }

  void handleWithNormalAction(void Function() executor,
      {bool showLoading = true}) {
    if (showLoading) {
      emit(const LoadingState());
    }
    try {
      executor();
    } catch (e) {
      emit(ErrorState(e.toString()));
    }
  }
}
