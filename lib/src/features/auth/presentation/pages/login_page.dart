import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:post_pilot/src/core/widgets/app_sized_box.dart';
import 'package:post_pilot/src/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../core/utils/constants/app_colors.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  LoginPage({super.key});

  Future<void> _checkLoginStatus(BuildContext context) async {
    final preferences = await SharedPreferences.getInstance();
    final savedEmail = preferences.getString('email');
    final savedPassword = preferences.getString('password');

    if (savedEmail != null && savedPassword != null) {
      Navigator.pushReplacementNamed(context, '/home');
    }
  }

  Future<void> _saveLoginData(String email, String password) async {
    final preferences = await SharedPreferences.getInstance();
    await preferences.setString('email', email);
    await preferences.setString('password', password);
  }

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _checkLoginStatus(context);
      BlocProvider.of<AuthBloc>(context)
          .add(AuthEvent.tokenSaveToSharedPreferences());
    });

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
                    'Login',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: AppColors.primary,
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
                  child: BlocBuilder<AuthBloc, AuthState>(
                    builder: (context, state) {
                      return TextField(
                        controller: _passwordController,
                        decoration: InputDecoration(
                          hintText: 'Enter your password',
                          prefixIcon: Icon(Icons.lock),
                          suffixIcon: IconButton(
                            icon: Icon(state.showPassword
                                ? Icons.visibility
                                : Icons.visibility_off),
                            onPressed: () {
                              context
                                  .read<AuthBloc>()
                                  .add(AuthEvent.showLoginPassword());
                            },
                          ),
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 16, horizontal: 16),
                        ),
                        obscureText: !state.showPassword,
                      );
                    },
                  ),
                ),
              ),
              SizedBox(height: 40),

              // Login Button
              Hero(
                tag: "button1",
                child: ElevatedButton(
                  onPressed: () async {
                    if (_emailController.text == "myapp@gmail.com" &&
                        _passwordController.text == "Myapp@123") {
                      await _saveLoginData(
                          _emailController.text, _passwordController.text);
                      Navigator.pushReplacementNamed(context, '/home');
                    } else {
                      // Show error message
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Invalid credentials')),
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
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
              Hero(
                tag: "button2",
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/register');
                  },
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
            ],
          ),
        ),
      ),
    );
  }
}
