import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

import 'counter_component/state.dart';

Reducer<PageState> buildReducer() {
  return asReducer(
    <Object, Reducer<PageState>>{
      PageAction.initCounter: _init,
    },
  );
}

PageState _init(PageState state, Action action) {
  final CounterState counterState = action.payload ?? CounterState();
  final PageState newState = state.clone();
  newState.counterState = counterState;
  return newState;
}
