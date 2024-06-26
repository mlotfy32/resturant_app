import 'package:flutter/material.dart';

@immutable
abstract class OnBordStateState {}

class OnBordStateInitial extends OnBordStateState {}

class updateOnBordState extends OnBordStateState {
  final int newIndex;
  updateOnBordState({required this.newIndex});
}
