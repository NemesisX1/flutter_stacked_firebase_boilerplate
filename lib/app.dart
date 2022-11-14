import 'package:flutter_stacked_firebase_boilerplate/core/services/abstract/auth.service.dart';
import 'package:flutter_stacked_firebase_boilerplate/core/services/abstract/storage.service.dart';
import 'package:flutter_stacked_firebase_boilerplate/core/services/firebase/auth/firebase_auth.service.dart';
import 'package:flutter_stacked_firebase_boilerplate/core/services/hive/hive.service.dart';
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
    LazySingleton(classType: HiveService, asType: StorageService),
    LazySingleton(classType: FirebaseAuthService, asType: AuthService)
  ],
  logger: StackedLogger(),
)

///
class App {
  //empty class, will be filled after code generation
}
