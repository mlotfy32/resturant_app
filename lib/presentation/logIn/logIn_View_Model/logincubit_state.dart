part of 'logincubit_cubit.dart';

@immutable
abstract class LogincubitState {}

class LogincubitInitial extends LogincubitState {}

class isButtonActive extends LogincubitState {
  final bool isActive;
  isButtonActive({required this.isActive});
}
