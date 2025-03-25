import 'package:chatapp/components/my_textfield.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Icon
            Icon(
              Icons.message_outlined,
              size: 60,
              color: Theme.of(context).colorScheme.primary,
            ),

            //welcome text
            Text(
              "Welcome to ChatApp",
              style: TextStyle(
                  color: Theme.of(context).colorScheme.primary, fontSize: 20),
            ),

            SizedBox(
              height: 20,
            ),
            //email textfield
            MyTextfield(
              hintText: "Email",
              obscureText: false,
              controller: _emailController,
            ),
            SizedBox(
              height: 20,
            ),
            MyTextfield(
              hintText: "Password",
              obscureText: true,
              controller: _passwordController,
            ),



            //Login button
          ],
        ),
      ),
    );
  }
}
