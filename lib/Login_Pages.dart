import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:login_pages/widgets/custom_textfild.dart';

class LoginPage extends StatelessWidget{
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context, ) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Text("BICROY.COME",style: TextStyle(
                  fontSize: 40,
                  color: Colors.green
              ),),
              SizedBox(
                height: 50,
              ),
              TextFormField(
                controller: emailController,
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.red
                ),
                decoration:InputDecoration(
                    hintText: "Enter your emil",
                    prefixIcon: Icon(Icons.email_outlined),
                    hintStyle: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 18,
                    ),
                    fillColor: Colors.blueGrey,
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                    ),
                    focusedBorder: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 50,),
              CustomTextField(
                controller:passwordController,
                hintText: "Enter your Password",
                prefixWidget: Icon(Icons.password_outlined),
              ),
              SizedBox(height: 50,),
            ],
          ),
        ),
      ),
    );
  }
}