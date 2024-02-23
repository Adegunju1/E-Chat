import 'package:echat/components/my_button.dart';
import 'package:echat/components/my_textfield.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  // email and pw text controller 
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _pwController = TextEditingController();
  final TextEditingController _confirmpwController = TextEditingController();

  RegisterPage({super.key});

  //register method
  void register() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body:  Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //logo
          Icon(Icons.message,
          size: 60,
          color: Theme.of(context).colorScheme.primary,
          ),

          const SizedBox(height: 50),

          //welcome back message
          Text("Let's create an account for you",
          style: TextStyle(
            color: Theme.of(context).colorScheme.primary,
          ),
          ),

          const SizedBox(height: 50),

          //email textfield
          MyTextField(
            hintText: 'Email',
            obscureText: false,
            controller: _emailController,
          ),

           const SizedBox(height: 10),

          //pw textfield
          MyTextField(
            hintText: 'Password',
            obscureText: true,
             controller: _pwController,
          ),

          const SizedBox(height: 10),

          //confirm pw textfield
          MyTextField(
            hintText: 'Confirm password',
            obscureText: true,
             controller: _confirmpwController,
          ),

          const SizedBox(height: 10),


          //login button
          MyButton(
            text: "Register",
            onTap: register,
          ),

          const SizedBox(height: 10),

          //register now
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Already have an account? ",
              style: 
              TextStyle(color: Theme.of(context).colorScheme.primary),
              ),
              Text("Login now",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                ),
                ),
            ],
          ),
          
        ],
      ),
      ),
    );
  }
}