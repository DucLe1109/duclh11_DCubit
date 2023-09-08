import 'package:d_bloc/d_bloc.dart';

class AnotherState extends BlocState {
  final String data;

  @override
  // TODO: implement props
  List<Object?> get props => [data];

  const AnotherState({required this.data});
}
