import 'package:echat/components/my_button.dart';
import 'package:echat/components/my_textfield.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  
  // email and pw text controller 
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _pwController = TextEditingController();

   LoginPage ({super.key});

   //login method
   void login() {}

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
          Text('Welcome back, you\'ve been missed!',
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


          //login button
          MyButton(
            text: "Login",
            onTap: login,
          ),

          const SizedBox(height: 10),

          //register now
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Not a member? ",
              style: 
              TextStyle(color: Theme.of(context).colorScheme.primary),
              ),
              Text("Register now",
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