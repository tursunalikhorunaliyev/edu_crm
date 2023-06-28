import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'on_tap_state.dart';

class OnTapCubit extends Cubit<OnTapState> {
  OnTapCubit() : super(OnTapInitial(onTap: false));
  void tap(bool isTapped) => emit(OnTapDataState(onTap: isTapped));
}
