import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:sign_in_button/sign_in_button.dart';
import 'package:smart_rent_mobile/core/theme/app_colors.dart';
import 'package:smart_rent_mobile/core/theme/app_gradients.dart';
import 'package:smart_rent_mobile/features/auth/providers/auth_provider.dart';

class LoginScreen extends ConsumerWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: const BoxDecoration(gradient: AppGradients.mainBackground),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                GestureDetector(
                  onTap: () => context.go('/'),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/logo.png", height: 40),
                      const SizedBox(width: 10),
                      const Text(
                        "Smart Rent",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 20),

                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      Stack(
                        alignment: Alignment
                            .centerLeft, // Aligns the button to the start
                        children: [
                          const SizedBox(
                            width: double.infinity,
                            child: Text(
                              "Login",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          IconButton(
                            onPressed: () => context.pop(),
                            icon: const Icon(Icons.arrow_back),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Don’t have an account? "),
                          GestureDetector(
                            onTap: () => context.push('/register'),
                            child: const Text(
                              "Sign Up",
                              style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 20),

                      const TextField(
                        decoration: InputDecoration(labelText: "Email"),
                      ),

                      const SizedBox(height: 10),

                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: "Password",
                          suffixIcon: IconButton(
                            icon: Icon(
                              Icons.visibility_off,
                              color: Colors.grey.shade600,
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ),

                      const SizedBox(height: 20),

                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            ref
                                .read(authProvider.notifier)
                                .login("Emmanuel", "RENTER");
                          },
                          child: const Text("Log In"),
                        ),
                      ),
                      const SizedBox(height: 10),

                      Row(
                        crossAxisAlignment: CrossAxisAlignment
                            .center, // Aligns widgets vertically in the center
                        children: <Widget>[
                          Expanded(
                            child: Divider(
                              color: Colors
                                  .grey
                                  .shade400, // Customize the line color
                              thickness: 1, // Customize the line thickness
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10.0,
                            ), // Add padding around the text
                            child: Text(
                              "Or",
                              style: const TextStyle(
                                // color: Colors.grey,
                              ), // Customize text style
                            ),
                          ),
                          Expanded(
                            child: Divider(
                              color: Colors.grey.shade400,
                              thickness: 1,
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: SignInButton(
                              padding: EdgeInsets.symmetric(vertical: 4),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              Buttons.google,
                              text: "Continue with Google",
                              textStyle: TextStyle(fontWeight: FontWeight.bold),
                              onPressed: () {},
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: SignInButton(
                              padding: EdgeInsets.symmetric(vertical: 10),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              Buttons.facebook,
                              text: "Continue with Facebook",
                              textStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: AppColors.surface,
                              ),
                              onPressed: () {},
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
