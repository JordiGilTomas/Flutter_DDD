import 'package:auto_route/auto_route.dart' as auto;
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ddd/application/auth/bloc/auth_bloc.dart';
import 'package:flutter_ddd/presentation/routes/router.gr.dart';
import 'package:flutter_ddd/presentation/sign_in/sign_in_page.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (BuildContext context, state) {
        state.map(
            initial: (_) {
              context.router.push(const SplashRoute());
            },
            authenticated: (_) {
              context.router.push(const NotesOverviewRoute());
            },
            unauthenticated: (_) =>
                context.router.push(const SignInPageRoute()));
      },
      child: const SizedBox(),
    );
  }
}
