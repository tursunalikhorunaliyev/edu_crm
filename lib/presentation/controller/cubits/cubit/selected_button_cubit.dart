import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'selected_button_state.dart';

class SelectedButtonCubit extends Cubit<SelectedButtonState> {
  SelectedButtonCubit() : super(SelectedButtonInitial(index: 0));

  void index(int indexi) => emit(SelectedButtonDataInitial(index: indexi));
}
