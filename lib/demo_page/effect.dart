import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

import 'counter_component/state.dart';

Effect<PageState> buildEffect() {
  return combineEffects(<Object, Effect<PageState>>{
    Lifecycle.initState: _init,
  });
}

void _init(Action action, Context<PageState> ctx) {
  final CounterState counterState = CounterState();
  ctx.dispatch(PageActionCreator.initCounterAction(counterState));
}
