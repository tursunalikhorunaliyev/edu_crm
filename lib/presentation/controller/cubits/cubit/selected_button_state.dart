part of 'selected_button_cubit.dart';

@immutable
abstract class SelectedButtonState {
  final int index;

  SelectedButtonState({required this.index});
}

class SelectedButtonInitial extends SelectedButtonState {
  SelectedButtonInitial({required super.index});
}

class SelectedButtonDataInitial extends SelectedButtonState {
  SelectedButtonDataInitial({required super.index});
}
