import 'package:d_bloc/cubit/d_cubit.dart';
import 'package:d_bloc/state/d_state.dart';

class ZDTCubit extends DCubit {
  void changeMapStyle() {
    executeAsyncAction(
      () async {
        Future.delayed(
          const Duration(seconds: 3),
          () {
            String hello = "Hello Duclh11";
            // emit(const SuccessState(data: "Nguyen Van Dong"));
          },
        );
        throw Exception("Loi roi");
      },
    );
  }
}
