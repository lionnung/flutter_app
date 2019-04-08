import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

import 'counter_component/component.dart';

class DemoPage extends Page<PageState, Map<String, dynamic>> {
  DemoPage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<PageState>(
                adapter: null,
                slots: <String, Dependent<PageState>>{
                  'counter': CounterConnector() + CounterComponent()
                }),
            middleware: <Middleware<PageState>>[
              logMiddleware(
                tag: 'DemoPage',
                monitor: (PageState state) {
                  return state?.counterState?.counter?.toString();
                },
              )
            ],);

}
