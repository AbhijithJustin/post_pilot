import 'package:flutter/material.dart';
import 'package:post_pilot/src/core/widgets/page_navigation_root/slide_transition_rout.dart';
import 'package:post_pilot/src/features/auth/presentation/pages/login_page.dart';

import '../../../../core/utils/constants/app_colors.dart';
import '../../../../core/widgets/app_sized_box.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _conformPasswordController =
      TextEditingController();

  // @override
  // void dispose() {
  //   _emailController.dispose();
  //   _passwordController.dispose();
  //   super.dispose();
  //}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Title
              Hero(
                tag: "AuthTitle",
                child: Material(
                  type: MaterialType.transparency,
                  child: Text(
                    'Register',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: AppColors.secondary,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 40),

              // Email TextField
              Hero(
                tag: "email",
                child: Material(
                  child: TextField(
                    controller: _emailController,
                    decoration: InputDecoration(
                      hintText: 'Enter your email',
                      prefixIcon: Icon(Icons.email),
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        borderSide:
                            BorderSide(color: AppColors.secondary, width: 2.0),
                      ),
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                ),
              ),
              SizedBox(height: 20),

              // Password TextField
              Hero(
                tag: "password",
                child: Material(
                  child: TextField(
                    controller: _passwordController,
                    decoration: InputDecoration(
                      hintText: 'Enter your password',
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: IconButton(
                        icon: Icon(Icons.visibility_off),
                        onPressed: () {},
                      ),
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        borderSide:
                            BorderSide(color: AppColors.secondary, width: 2.0),
                      ),
                    ),
                    obscureText: true,
                  ),
                ),
              ),
              SizedBox(height: 40),
              Material(
                child: TextField(
                  controller: _conformPasswordController,
                  decoration: InputDecoration(
                    hintText: 'conform your password',
                    prefixIcon: Icon(Icons.lock_person),
                    suffixIcon: IconButton(
                      icon: Icon(Icons.visibility_off),
                      onPressed: () {},
                    ),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide:
                          BorderSide(color: AppColors.secondary, width: 2.0),
                    ),
                  ),
                  obscureText: true,
                ),
              ),
              SizedBox(height: 40),

              Hero(
                tag: 'button1',
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.secondary,
                    minimumSize: Size(double.infinity, 50),
                  ),
                  child: Text(
                    'Register',
                    style: TextStyle(
                      color: AppColors.background,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              AppSizedBox.hMedium,
              Hero(
                tag: 'button2',
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/login");
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primary,
                    minimumSize: Size(double.infinity, 50),
                  ),
                  child: Text(
                    'Login',
                    style: TextStyle(
                      color: AppColors.background,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

              AppSizedBox.hMedium,
            ],
          ),
        ),
      ),
    );
  }
}
