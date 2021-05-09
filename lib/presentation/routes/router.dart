import 'package:auto_route/annotations.dart';
import 'package:flutter_ddd/presentation/notes/note_form/misc/notes_overview/notes_overview_page.dart';
import 'package:flutter_ddd/presentation/routes/splash/splash_page.dart';
import 'package:flutter_ddd/presentation/sign_in/sign_in_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    MaterialRoute(page: SplashPage, initial: true),
    MaterialRoute(page: SignInPage),
    MaterialRoute(page: NotesOverviewPage),
  ],
)
class $AppRouter {}
