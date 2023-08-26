import 'package:flutter/material.dart';
import 'package:test_bloc/default_widget/default_error_widget.dart';
import 'package:test_bloc/default_widget/default_loading_widget.dart';

import '../state/bloc_state.dart';

Widget Function(BuildContext, BlocState) defaultBuilder<T>({
  Widget Function()? onLoading,
  required Widget Function(T data) onSuccess,
  Widget Function(String errorMessage)? onError,
  Widget Function()? otherwise,
}) =>
    (context, BlocState state) {
      if (state is LoadingState) {
        return (onLoading != null) ? onLoading() : const DefaultLoadingWidget();
      }
      if (state is SuccessState) {
        return onSuccess(state.data as T);
      }
      if (state is ErrorState) {
        return (onError != null)
            ? onError(state.errorMessage)
            : DefaultErrorWidget(errorMessage: state.errorMessage);
      }
      return (otherwise != null) ? otherwise() : Container();
    };
