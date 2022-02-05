import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'translator_event.dart';
part 'translator_state.dart';

class TranslatorBloc extends Bloc<TranslatorEvent, TranslatorState> {
  TranslatorBloc() : super(TranslatorInitial());

  @override
  Stream<TranslatorState> mapEventToState(
    TranslatorEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
