import 'package:fluro/fluro.dart';
import 'package:navigator_router/main.dart';
import 'package:navigator_router/page1.dart';
import 'package:navigator_router/page2.dart';

class FluroRouterBase {
  static FluroRouter router = FluroRouter();

  static Handler home = Handler(
    handlerFunc: (context, parameters) => const HomePage(),
  );

  static Handler page1 = Handler(
    handlerFunc: (context, parameters) => const Page1(),
  );

  static Handler page2 = Handler(
    handlerFunc: (context, params) => Page2(
      text: params['text']![0],
    ),
  );

  static void setupRouter() {
    router.define(
      "/",
      handler: home,
      transitionType: TransitionType.cupertino,
    );

    router.define(
      "/page1",
      handler: page1,
      transitionType: TransitionType.cupertino,
    );

    router.define(
      "/page2/:text",
      handler: page2,
      transitionType: TransitionType.cupertino,
    );
  }
}
