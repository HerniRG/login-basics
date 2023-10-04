import 'package:flutter/material.dart';
import 'package:login/components/square_tile.dart';

class GoogleAppleOrLogin extends StatelessWidget {
  const GoogleAppleOrLogin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 25),

        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 25),
          child: Row(
            children: [
              Expanded(
                child: Divider(
                  thickness: 0.5,
                  color: Colors.white54,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Text('Or Continue with',
                    style: TextStyle(color: Colors.white54)),
              ),
              Expanded(
                child: Divider(
                  thickness: 0.5,
                  color: Colors.white54,
                ),
              ),
            ],
          ),
        ),

        const SizedBox(height: 25),

        // google and apple buttons
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SquareTile(imagePath: 'assets/google.png'),
            SizedBox(width: 25),
            SquareTile(imagePath: 'assets/apple.png'),
          ],
        ),
        const SizedBox(height: 25),

        // dont have an account?
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Don\'t have an account?',
              style: TextStyle(color: Colors.white54),
            ),
            const SizedBox(width: 5),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Text(
                'Login now',
                style:
                    TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        )
      ],
    );
  }
}
