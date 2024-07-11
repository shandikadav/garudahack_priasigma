import 'package:flutter/material.dart';
import 'package:garudahack_priasigmas/routes/router.dart';
import 'package:garudahack_priasigmas/shared/theme/themes.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset('assets/Image_Assettelor_siginin_atas.png')
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Text(
              "Login",
              style: blackColorTextStyle.copyWith(
                fontSize: 37,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
         const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text("E-mail",
                            style: blackColorTextStyle.copyWith(
                              fontSize: 16,
                            ),
                            ),
                          ],
                        ),
                        TextField(
                          decoration: InputDecoration(
                            hintText: 'Yourname@gmail.com' ,
                        enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                            filled: true,
                            fillColor: whiteColor
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "Password",
                            style: blackColorTextStyle.copyWith(
                              fontSize: 16,
                            ),
                            ),
                          ],
                        ),
                        TextField(
                          decoration: InputDecoration(
                            hintText: 'Fill Your Password Here' ,
                        enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                            filled: true,
                            fillColor: whiteColor
                          
                          ),
                          obscureText: true,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                  height: 27,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/home');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: blackColor,
                    ),
                    child: Text(
                      'Login',
                      style: whiteColorTextStyle.copyWith(
                        fontSize: 12,
                        
                      )
                    ),
                  ),
                ),
                const SizedBox(height: 25,),
                 TextButton(
                    onPressed: () {
                      router.goNamed(RouteNames.signUp);
                    },
                    child:  Text(
                      'Don’t have an account? Sign up',
                      style: blackColorTextStyle.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.w500),
                    )
                    ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.end,
          //   children: [
          //       Image.asset('assets/Image_Assettelor_siginin_bawah.png')
          // ],
          // )
        ],
      ),
    );
  }
}