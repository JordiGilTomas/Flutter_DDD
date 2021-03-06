import 'package:auto_route/auto_route.dart';
import 'package:flutter_ddd/application/auth/sign_in_form/bloc/sign_in_form_bloc.dart';
import 'package:flutter_ddd/injection.dart';
import 'package:flutter_ddd/presentation/sign_in/widgets/sign_in_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInPageRoute extends PageRouteInfo {
  const SignInPageRoute() : super(name, path: '/signInPage');

  static const String name = "SignInPage";
}

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign In'),
      ),
      body: BlocProvider(
        create: (context) => getIt<SignInFormBloc>(),
        child: SignInForm(),
      ),
    );
  }
}
