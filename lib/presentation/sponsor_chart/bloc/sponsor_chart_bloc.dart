import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'sponsor_chart_event.dart';
part 'sponsor_chart_state.dart';

class SponsorChartBloc extends Bloc<SponsorChartEvent, SponsorChartState> {
  SponsorChartBloc() : super(SponsorChartInitial());

  @override
  Stream<SponsorChartState> mapEventToState(
    SponsorChartEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
