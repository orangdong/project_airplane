import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_airplane/cubit/auth_cubit.dart';
import 'package:project_airplane/ui/widgets/button.dart';
import 'package:project_airplane/ui/widgets/input_field.dart';
import '../../shared/theme.dart';

class SignInPage extends StatelessWidget {
  SignInPage({ Key? key }) : super(key: key);

  final TextEditingController emailController = TextEditingController(text: '');
  final TextEditingController passwordController = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Text(
          'Login with your\nexisiting account',
          style: blackTextStyle.copyWith(fontSize: 24, fontWeight: semiBold),
        ),
      );
    }

    Widget inputSection() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(defaultRadius),
        ),
        child: Column(
          children: [
            InputField(
                label: 'Email',
                hint: 'Input your email',
                controller: emailController),
            InputField(
                label: 'Password',
                hint: 'Input your password',
                isHidden: true,
                controller: passwordController),
            BlocConsumer<AuthCubit, AuthState>(
              listener: (context, state) {
                if(state is AuthSuccess) {
                  Navigator.pushNamedAndRemoveUntil(context, '/main', (route) => false);
                }else if(state is AuthFailure){
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text(state.error),
                    backgroundColor: kRedColor,
                    ));
                }
              },
              builder: (context, state) {

                if(state is AuthLoading){
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
                return Button(
                  margin: EdgeInsets.only(top: 10),
                  title: 'Sign In',
                  onPressed: () {
                    context.read<AuthCubit>().signIn(
                      email: emailController.text,
                      password: passwordController.text,
                    );
                  },
                );
              },
            ),
          ],
        ),
      );
    }

    Widget signUpButton() {
      return GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, '/sign-up');
        },
        child: Container(
          margin: EdgeInsets.only(top: 50, bottom: 73),
          alignment: Alignment.center,
          child: Text(
            'Dont have account? Sign Up',
            style: greyTextStyle.copyWith(
                fontSize: 16,
                fontWeight: light,
                decoration: TextDecoration.underline),
          ),
        ),
      );
    }
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: defaultMargin,
          ),
          children: [title(), inputSection(), signUpButton()],
        ),
      ),
    );
  }
}