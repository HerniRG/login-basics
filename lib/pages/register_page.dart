import 'package:flutter/material.dart';
import 'package:login/components/my_button.dart';
import 'package:login/widgets/login_register/exports.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  //text editing controllers
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final passwordConfirmationController = TextEditingController();

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
                icon: Icons.lock,
                title: 'Register Page',
                subtitle: 'Let\'s create an account',
              ),
              TextFieldsAndFogotPassRegister(
                  emailController: emailController,
                  passwordController: passwordController,
                  passwordConfirmationController:
                      passwordConfirmationController),
              // signin button
              MyButton(
                onTap: signUserIn,
              ),
              const GoogleAppleOrLogin()
            ]),
      ),
    );
  }
}
