import 'package:auto_route/auto_route.dart' as auto;
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ddd/application/auth/bloc/auth_bloc.dart';
import 'package:flutter_ddd/presentation/sign_in/sign_in_page.dart';

class SplashPageRoute extends PageRouteInfo {
  const SplashPageRoute() : super(name, path: '/splash');

  static const String name = "SplashScreen";
}

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (BuildContext context, state) {
        state.map(
            initial: (_) {},
            authenticated: (_) {
              context.router.replace(const SplashPageRoute());
            },
            unauthenticated: (_) =>
                context.router.replace(const SignInPageRoute()));
      },
      child: const SizedBox(),
    );
  }
}
