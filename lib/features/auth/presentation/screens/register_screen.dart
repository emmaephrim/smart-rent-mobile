import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:smart_rent_mobile/core/theme/app_colors.dart';
import 'package:smart_rent_mobile/core/theme/app_gradients.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: const BoxDecoration(gradient: AppGradients.mainBackground),
        child: Center(
          child: SingleChildScrollView(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Transform.translate(
                        offset: const Offset(
                          -13,
                          0,
                        ), // Adjust the -4 until it lines up perfectly
                        child: IconButton(
                          padding: EdgeInsets.zero,
                          constraints: const BoxConstraints(),
                          onPressed: () => context.pop(),
                          icon: const Icon(Icons.arrow_back),
                        ),
                      ),
                    ],
                  ),

                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Sign up",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  const SizedBox(height: 8),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text("Already have an account? "),
                      GestureDetector(
                        onTap: () => context.push('/login'),
                        child: const Text(
                          "Login",
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
                    decoration: InputDecoration(labelText: "First Name"),
                  ),
                  const SizedBox(height: 10),

                  const TextField(
                    decoration: InputDecoration(labelText: "Last Name"),
                  ),
                  const SizedBox(height: 10),

                  const TextField(
                    decoration: InputDecoration(labelText: "Email"),
                  ),
                  const SizedBox(height: 10),

                  const TextField(
                    decoration: InputDecoration(labelText: "Phone Number"),
                  ),
                  const SizedBox(height: 10),

                  const TextField(
                    obscureText: true,
                    decoration: InputDecoration(labelText: "Password"),
                  ),

                  const SizedBox(height: 20),

                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text("Register"),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
