// ignore_for_file: use_build_context_synchronously, avoid_print, non_constant_identifier_names


import 'package:bookly/Features/login/presentatiion/view/widgets/custom_logo_auth.dart';
import 'package:bookly/Features/login/presentatiion/view/widgets/custom_text_field.dart';
import 'package:bookly/Features/login/presentatiion/view/widgets/forgot_password.dart';
import 'package:bookly/Features/login/presentatiion/view/widgets/google_button.dart';
import 'package:bookly/Features/login/presentatiion/view/widgets/logint_button.dart';
import 'package:bookly/Features/login/presentatiion/view/widgets/to_register.dart';
import 'package:bookly/Features/login/presentatiion/view/widgets/toogle_sigup.dart';
import 'package:flutter/material.dart';

// ignore_for_file: use_build_context_synchronously, avoid_print, non_constant_identifier_names


class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            const LogoImage(),
            const SizedBox(height: 120),
        
           Container(
            margin: EdgeInsets.only(left: 80,right: 70,top: 210),
            child: ToggleLoginSignup()),
            const SizedBox(height: 10),
      
        
            Container(
              width: 350,
              height: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                 borderRadius: const BorderRadius.only(
      topLeft: Radius.circular(20),
      topRight: Radius.circular(20),
    ),
                ),

              child: Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Email',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    CustomtTextForm(
                      hinttext: 'Enter your email',
                      mycontroller: emailController,
                      validator: (val) => val!.isEmpty ? 'Email cannot be empty' : null,
                    ),
                    const SizedBox(height: 15),
                      
                    const Text(
                      'Password',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    CustomtTextForm(
                      hinttext: 'Enter your password',
                      mycontroller: passwordController,
                      validator: (val) => val!.isEmpty ? 'Password cannot be empty' : null,
                    ),
                    ForgotPassword(email: emailController),
                  ],
                ),
              ),
            ),
        
            const SizedBox(height: 20),
            LoginButton(
              formState: formKey,
              email: emailController,
              password: passwordController,
            ),
            const SizedBox(height: 20),
           
            const SizedBox(height: 20),
            const ToRegister(),
          ],
        ),
      ),
    );
  }
}




class FakeBottomSheet extends StatelessWidget {
  const FakeBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Stack(
        children: [
          // Your background or main screen content
          const Center(child: Text("Main Screen")),

          // Fake BottomSheet-like container
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.45,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10,
                    offset: Offset(0, -5),
                  ),
                ],
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      width: 40,
                      height: 5,
                      decoration: BoxDecoration(
                        color: Colors.grey[400],
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text("BottomSheet-like Content"),
                    const SizedBox(height: 10),
                    // Add more widgets here
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
