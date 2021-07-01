import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'personal_statistic_event.dart';
part 'personal_statistic_state.dart';

class PersonalStatisticBloc extends Bloc<PersonalStatisticEvent, PersonalStatisticState> {
  PersonalStatisticBloc() : super(PersonalStatisticInitial());

  @override
  Stream<PersonalStatisticState> mapEventToState(
    PersonalStatisticEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
