import 'package:flutter_stacked_firebase_boilerplate/ui/home/home.view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(
  routes: [
    MaterialRoute(
      page: HomeView,
      initial: true,
    ),
  ],
  dependencies: [
    Singleton(classType: NavigationService),
  ],
  logger: StackedLogger(),
)

///
class App {
  //empty class, will be filled after code generation
}
