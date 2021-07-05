import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'g1_analysis_event.dart';
part 'g1_analysis_state.dart';

class G1AnalysisBloc extends Bloc<G1AnalysisEvent, G1AnalysisState> {
  G1AnalysisBloc() : super(G1AnalysisInitial());

  @override
  Stream<G1AnalysisState> mapEventToState(
    G1AnalysisEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
