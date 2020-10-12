import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ddd/application/auth/bloc/auth_bloc.dart';
import 'package:flutter_ddd/presentation/routes/autoRouter.gr.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (BuildContext context, state) {
        state.map(
          initial: (_) {},
          authenticated: (_) {
            print("Auth ok");
            ExtendedNavigator.of(context).replace(Routes.signInPage);
          },
          unauthenticated: (_) =>
              ExtendedNavigator.of(context).replace(Routes.signInPage),
        );
      },
    );
  }
}
