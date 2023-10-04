import 'package:flutter/material.dart';
import 'package:login/components/my_button.dart';
import 'package:login/widgets/login_register/exports.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //text editing controllers
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[600],
      body: SafeArea(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const IconAndTextHeader(
                  icon: Icons.login,
                  title: 'Login Page',
                  subtitle: 'Welcome, I hope you have a good day!'),
              TextFieldsAndFogotPassLogin(
                  emailController: emailController,
                  passwordController: passwordController),
              // signin button
              MyButton(
                onTap: signUserIn,
              ),
              const GoogleAppleOrRegister()
            ]),
      ),
    );
  }
}
