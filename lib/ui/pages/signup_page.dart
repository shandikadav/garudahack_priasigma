import 'package:flutter/material.dart';
import 'package:garudahack_priasigmas/routes/router.dart';
import 'package:garudahack_priasigmas/shared/theme/themes.dart';
import 'package:garudahack_priasigmas/ui/widgets/buttons.dart';
import 'package:go_router/go_router.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Sign Up',
                  style: blackColorTextStyle.copyWith(
                    fontSize: 34,
                  ),
                ),
                Image.asset('assets/img_vector1.png'),
              ],
            ),
          ),
          const SizedBox(
            height: 34,
          ),
          //textfield name
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Full name',
                  style: blackColorTextStyle.copyWith(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: whiteColor,
                    hintText: 'Masukkan nama kamu',
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 19,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Email',
                  style: blackColorTextStyle.copyWith(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: whiteColor,
                    hintText: 'Masukkan email kamu',
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 19,
          ),
          //column password
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Password',
                  style: blackColorTextStyle.copyWith(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                TextField(
                  obscureText: true,
                  obscuringCharacter: '•',
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: whiteColor,
                    hintText: 'Masukkan password',
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.visibility, size: 20),
                      onPressed: () {},
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 41,
          ),
          //button sign up
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: PrimaryButton(
              title: 'SIGN UP',
              onTap: () {},
            ),
          ),
          const SizedBox(
            height: 33,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Already have an account? ',
                style: blackColorTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              InkWell(
                onTap: () {
                  router.goNamed(RouteNames.signIn);
                },
                child: Text(
                  'Login',
                  style: whiteColorTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
