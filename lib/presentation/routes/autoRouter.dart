import 'package:auto_route/auto_route_annotations.dart';
import 'package:flutter_ddd/presentation/routes/splash/splash_page.dart';
import 'package:flutter_ddd/presentation/sign_in/sign_in_page.dart';

@MaterialAutoRouter(routes: <AutoRoute>[
  MaterialRoute(page: SplashPage, initial: true),
  MaterialRoute(page: SignInPage),
], generateNavigationHelperExtension: true)
class $AutoRouter {}
