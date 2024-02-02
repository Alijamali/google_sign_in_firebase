import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

import '../provider/provider_sign_in.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: double.infinity,
              child: Image.asset('assets/images/welcome_one.png'),
            ),
            const Text(
              'Welcome To Fire Hands Channel',
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(
              height: 150,
            ),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(250, 35),
              ),
              onPressed: () {
                final provider= Provider.of<GoogleSignInProvider>(context , listen: false);
                provider.googleLogin();
              },
              icon: const FaIcon(FontAwesomeIcons.google),
              label: const Text("Sign up with Google",
                  style: TextStyle(fontSize: 19, color: Colors.black87)),
            ),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black87,
                minimumSize: const Size(250, 35),
              ),
              onPressed: () {},
              icon: const FaIcon(FontAwesomeIcons.github),
              label: const Text("Sign up with Github",
                  style: TextStyle(fontSize: 19, color: Colors.black87)),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text('Already have an Account? Log In',
                style: TextStyle(fontSize: 12)),
          ],
        ),
      ),
    );
  }
}
