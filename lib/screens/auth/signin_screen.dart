import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:ecommerce_app/screens/shop_screen.dart';
import 'package:flutter/material.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  //Login Function
  void login(){
    Navigator.push (context, MaterialPageRoute(builder: (_) => ShopScreen()));
  // const snackBar = SnackBar(
  //                 /// need to set following properties for best effect of awesome_snackbar_content
  //                 elevation: 0,
  //                 behavior: SnackBarBehavior.floating,
  //                 backgroundColor: Colors.transparent,
  //                 content: AwesomeSnackbarContent(
  //                   title: 'On Snap!',
  //                   message:
  //                       'This is an example error message that will be shown in the body of snackbar!',

  //                   /// change contentType to ContentType.success, ContentType.warning or ContentType.help for variants
  //                   contentType: ContentType.success,
  //                 ),
  //               );

  //               ScaffoldMessenger.of(context)
  //                 ..hideCurrentSnackBar()
  //                 ..showSnackBar(snackBar);

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Logo
          Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSVX33cFT-flrbgEoNYiID-Cjv-s_FeAoUKXw&s"),

          const SizedBox(height: 10),
        
            //Welcome  Message
          Text(' Welcome To Our Shop, Enjoy Shoping.'),
        const SizedBox(height: 10),

            //Username Textfield
          TextField(
            decoration: InputDecoration(
              labelText: "username",
              border: OutlineInputBorder()
              
            ),
          ),
           const SizedBox(height: 20),

          // Pasword TextFeild
            TextField( 
              obscureText: true,
            decoration: InputDecoration(
              labelText: "password",
              border: OutlineInputBorder()
            ),
          ),
         const SizedBox(height: 20),

            //Sign In Button
            SizedBox(
              child: ElevatedButton(onPressed: login ,
              child: Text("Sign in"))
            )
          ],
        ),
      ),
    );
  }
}