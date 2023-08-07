// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';

// class Forgotpassword extends StatefulWidget {
//   @override
//   State<Forgotpassword> createState() => _ForgotpasswordState();
// }

// class _ForgotpasswordState extends State<Forgotpassword> {
//   final emailController = TextEditingController();

//   @override
//   void dispose() {
//     emailController.dispose();
//     super.dispose();
//   }

//   // Future<void> passwordReset() async {
//   //   try {
//   //     await FirebaseAuth.instance
//   //         .sendPasswordResetEmail(email: emailController.text.trim());
//   //     showDialog(
//   //         context: context,
//   //         builder: (context) {
//   //           return AlertDialog(
//   //             content: Text('Password reset link sent! Check you email'),
//   //           );
//   //         });
//   //   } on FirebaseAuthException catch (e) {
//   //     print(e);
//   //     showDialog(
//   //         context: context,
//   //         builder: (context) {
//   //           return AlertDialog(
//   //             content: Text(e.message.toString()),
//   //           );
//   //         });
//   //   }
//   // }
//   Future<void> passwordReset() async {
//     showDialog(
//       context: context,
//       barrierDismissible: false,
//       builder: (context) => Center(
//         child: CircularProgressIndicator(),
//       ),
//     );
//     try {
//       await FirebaseAuth.instance
//           .sendPasswordResetEmail(email: emailController.text.trim());
//       Navigator.of(context).pop();
//       ScaffoldMessenger.of(context)
//           .showSnackBar(SnackBar(content: Text('Password reset email sent')));
//       Navigator.of(context).popUntil((route) => route.isFirst);
//     } on FirebaseAuthException catch (e) {
//       print(e);

//       String errorMessage = e.message.toString();
//       Navigator.of(context).pop();
//       ScaffoldMessenger.of(context)
//           .showSnackBar(SnackBar(content: Text(errorMessage)));
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         elevation: 0,
//         backgroundColor: Color(0x665ac18e),
//       ),
//       body: Container(
//         height: double.infinity,
//         width: double.infinity,
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             begin: Alignment.topCenter,
//             end: Alignment.bottomCenter,
//             colors: [
//               Color(0x665ac18e),
//               Color(0x995ac18e),
//               Color(0xcc5ac18e),
//               Color(0xff5ac18e),
//             ],
//           ),
//         ),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 25.0),
//               child: Text(
//                 'Enter your email and we will send you a password reset link',
//                 textAlign: TextAlign.center,
//                 style: TextStyle(fontSize: 20),
//               ),
//             ),
//             SizedBox(height: 10),
//             Container(
//               alignment: Alignment.centerLeft,
//               decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.circular(10),
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.black26,
//                       blurRadius: 6,
//                       offset: Offset(0, 2),
//                     )
//                   ]),
//               height: 60,
//               child: TextFormField(
//                 controller: emailController,
//                 keyboardType: TextInputType.emailAddress,
//                 style: TextStyle(color: Colors.black87),
//                 decoration: InputDecoration(
//                     border: InputBorder.none,
//                     contentPadding: EdgeInsets.only(top: 14),
//                     prefixIcon: Icon(
//                       Icons.email,
//                       color: Color(0xff5ac18e),
//                     ),
//                     hintText: 'Email',
//                     hintStyle: TextStyle(
//                       color: Colors.black38,
//                     )),
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Please enter an email';
//                   }
//                   return null;
//                 },
//               ),
//             ),
//             SizedBox(height: 10),
//             MaterialButton(
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(15),
//               ),
//               onPressed: passwordReset,
//               child: Text('Reset Password'),
//               color: Colors.white,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:App/services/Auth_forgotpassword.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ForgotPasswordPage extends StatefulWidget {
  @override
  _ForgotPasswordPageState createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  String _email = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Forgot Password'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: 'Enter your email',
              ),
              onChanged: (value) {
                setState(() {
                  _email = value.trim();
                });
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                forgotPassword(_email);
              },
              child: Text('Reset Password'),
            ),
          ],
        ),
      ),
    );
  }
}
