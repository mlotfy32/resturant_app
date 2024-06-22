part of 'on_bord_state_cubit.dart';

@immutable
abstract class OnBordStateState {}

class OnBordStateInitial extends OnBordStateState {}

class updateOnBordState extends OnBordStateState {
  final int newIndex;
  updateOnBordState({required this.newIndex});
}
