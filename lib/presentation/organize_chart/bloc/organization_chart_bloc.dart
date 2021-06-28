import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'organization_chart_event.dart';
part 'organization_chart_state.dart';

class OrganizationChartBloc extends Bloc<OrganizationChartEvent, OrganizationChartState> {
  OrganizationChartBloc() : super(OrganizationChartInitial());

  @override
  Stream<OrganizationChartState> mapEventToState(
    OrganizationChartEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
