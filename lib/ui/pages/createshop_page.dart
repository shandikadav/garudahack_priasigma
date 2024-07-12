import 'package:flutter/material.dart';
import 'package:garudahack_priasigmas/shared/theme/themes.dart';

import '../widgets/buttons.dart';

class CreateshopPage extends StatelessWidget {
  const CreateshopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset('assets/Image_Assettelor_siginin_atas.png'),
            ],
          ),
          SafeArea(
            child: ListView(
              children: [
                const SizedBox(
                  height: 123,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Register Shop',
                      style: blackColorTextStyle.copyWith(
                        fontSize: 24,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 46,
                ),
                CircleAvatar(
                  minRadius: 70,
                  child: Container(
                    height: 118,
                    width: 118,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage('assets/img_profile.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 27,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "shop Name",
                            style: blackColorTextStyle.copyWith(
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                      TextField(
                        // controller: emailController,
                        decoration: InputDecoration(
                            hintText: 'Figo Fawwaz',
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            filled: true,
                            fillColor: whiteColor),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 57,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 63),
                  child: PrimaryButton(
                    title: 'CREATE',
                    onTap: () {},
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
