import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_signin_firebase/presention/logged_in_screen.dart';
import 'package:google_signin_firebase/presention/sign_up_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(color: Colors.amber,),
            );
          }
          else if (snapshot.hasData){
            return const LoggedInScreen();
          }
          else if (snapshot.hasError){
            return const Center(child: Text("something wrong!"),);
          }
          else{
            return const SignUpScreen();
          }


        });
  }
}
