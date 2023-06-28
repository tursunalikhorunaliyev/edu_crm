part of 'on_tap_cubit.dart';

@immutable
abstract class OnTapState {
  final bool onTap;

  OnTapState({required this.onTap});
}

class OnTapInitial extends OnTapState {
  OnTapInitial({required super.onTap});
}

class OnTapDataState extends OnTapState {
  OnTapDataState({required super.onTap});
}
