part of 'translator_bloc.dart';

@immutable
abstract class TranslatorEvent {
  const TranslatorEvent();
}

class FetchTranslator extends TranslatorEvent {
  @override
  Object get props => [];
}
