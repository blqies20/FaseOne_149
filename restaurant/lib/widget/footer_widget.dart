import 'package:flutter/material.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({super.key, required this.onPressedLogin, required this.onPressedRegister});

  final VoidCallback onPressedLogin;
  final VoidCallback onPressedRegister;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 25,
        ),
        ElevatedButton(
          onPressed: onPressedLogin,
          child: const Text("Masuk"),
        ),
        const SizedBox(
          height: 10,
        ),
      ]
    );
  }
}
