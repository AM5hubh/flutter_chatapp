import 'package:chatapp/auth/auth_service.dart';
import 'package:chatapp/components/my_button.dart';
import 'package:chatapp/components/my_textfield.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _conpasswordController = TextEditingController();

  final void Function() onTapfunc;
  SignupPage({super.key, required this.onTapfunc});

  void register() {
    final authservice = AuthService();

    try {
      if (_passwordController.text == _conpasswordController.text) {
        authservice.signUpWithEmailAndPassword(
            _emailController.text, _passwordController.text);
      } else {
        print("Passwords do not match");
      }
    } catch (e) {
      print("Error: $e");
    }
  }

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
              height: 4,
            ),
            MyTextfield(
              hintText: "Password",
              obscureText: true,
              controller: _passwordController,
            ),
            SizedBox(
              height: 4,
            ),
            MyTextfield(
              hintText: "Confirm password",
              obscureText: true,
              controller: _conpasswordController,
            ),

            SizedBox(
              height: 20,
            ),
            //Login button
            MyButton(
              buttontext: "Sign up",
              onTapfunc: register,
            ),
            SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have an account? "),
                GestureDetector(
                  onTap: onTapfunc,
                  child: Text("Login",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.primary,
                      )),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
