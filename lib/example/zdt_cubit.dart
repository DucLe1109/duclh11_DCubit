import 'package:test_bloc/cubit/m_cubit.dart';
import 'package:test_bloc/state/bloc_state.dart';

class ZDTCubit extends MCubit {
  void changeMapStyle() {
    handleWithAsyncAction(() async {
      Future.delayed(
        const Duration(seconds: 3),
        () {
          String hello = "Hello Duclh11";
          emit(SuccessState(hello));
        },
      );
    }, showLoading: true);
  }
}
