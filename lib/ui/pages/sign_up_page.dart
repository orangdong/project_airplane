import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_airplane/cubit/auth_cubit.dart';
import 'package:project_airplane/ui/widgets/button.dart';
import 'package:project_airplane/ui/widgets/input_field.dart';
import '../../shared/theme.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({Key? key}) : super(key: key);

  final TextEditingController nameController = TextEditingController(text: '');
  final TextEditingController emailController = TextEditingController(text: '');
  final TextEditingController passwordController = TextEditingController(text: '');
  final TextEditingController hobbyController = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Text(
          'Join us and get\nyour next journey',
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
                label: 'Full Name',
                hint: 'Input your full name',
                controller: nameController),
            InputField(
                label: 'Email',
                hint: 'Input your email',
                controller: emailController),
            InputField(
                label: 'Password',
                hint: 'Input your password',
                isHidden: true,
                controller: passwordController),
            InputField(
                label: 'Hobby',
                hint: 'Whats your hobby?',
                controller: hobbyController),
            BlocConsumer<AuthCubit, AuthState>(
              listener: (context, state) {
                if(state is AuthSuccess) {
                  Navigator.pushNamedAndRemoveUntil(context, '/bonus', (route) => false);
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
                  title: 'Sign Up',
                  onPressed: () {
                    print(nameController.text);
                    context.read<AuthCubit>().signUp(
                      name: nameController.text,
                      email: emailController.text,
                      password: passwordController.text,
                      hobby: hobbyController.text,
                    );
                  },
                );
              },
            ),
          ],
        ),
      );
    }

    Widget tacButton() {
      return Container(
        margin: EdgeInsets.only(top: 50, bottom: 73),
        alignment: Alignment.center,
        child: Text(
          'Terms and Conditions',
          style: greyTextStyle.copyWith(
              fontSize: 16,
              fontWeight: light,
              decoration: TextDecoration.underline),
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
          children: [title(), inputSection(), tacButton()],
        ),
      ),
    );
  }
}
