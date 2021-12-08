import 'package:flutter/material.dart';
import 'package:project_airplane/cubit/auth_cubit.dart';
import 'package:project_airplane/services/auth_service.dart';
import 'package:project_airplane/ui/widgets/button.dart';
import '../../shared/theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if(state is AuthFailure){
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text(state.error),
            backgroundColor: kRedColor,
            ));
        }else if (state is AuthInitial){
          Navigator.pushNamedAndRemoveUntil(context, '/sign-up', (route) => false);
        }
      },
      builder: (context, state) {
        if(state is AuthLoading){
          return Center(child: CircularProgressIndicator());
        }
        return Scaffold(
          backgroundColor: kBackgroundColor,
          body: Center(
            child: Button(
              title: 'Sign Out',
              onPressed: () {
                context.read<AuthCubit>().signOut();
              },
              width: 220,
            ),
          ),
        );
      },
    );
  }
}
