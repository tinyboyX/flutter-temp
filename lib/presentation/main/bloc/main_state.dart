part of 'main_bloc.dart';

@immutable
abstract class MainState {}

class MainInitial extends MainState {}

class SelectIndexState extends MainState {
  final int? index;

  SelectIndexState({this.index});
}

class ScrollIndexState extends MainState {}
