import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:garudahack_priasigmas/blocs/login/login_bloc.dart';
import 'package:garudahack_priasigmas/routes/router.dart';
import 'package:garudahack_priasigmas/shared/theme/themes.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: BlocProvider(
        create: (context) => LoginBloc(),
        child: BlocListener<LoginBloc, LoginState>(
          listener: (context, state) {
            // TODO: implement listener
            if (state is LoginSuccess) {
              router.goNamed(RouteNames.home);
              emailController.clear();
              passwordController.clear();
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Login Success'),
                  backgroundColor: Colors.green,
                ),
              );
            } else if (state is LoginError) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(state.message),
                  backgroundColor: Colors.red,
                ),
              );
            }
          },
          child: BlocBuilder<LoginBloc, LoginState>(
            builder: (context, state) {
              if (state is LoginLoading) {
                return const Center(
                  child: CircularProgressIndicator.adaptive(),
                );
              }
              return ListView(
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
                            Text(
                              "E-mail",
                              style: blackColorTextStyle.copyWith(
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                        TextField(
                          controller: emailController,
                          decoration: InputDecoration(
                              hintText: 'Yourname@gmail.com',
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
                          controller: passwordController,
                          decoration: InputDecoration(
                              hintText: 'Fill Your Password Here',
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              filled: true,
                              fillColor: whiteColor),
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
                      onPressed: state is! LoginLoading
                          ? () {
                              context.read<LoginBloc>().add(LoginButtonPressed(
                                    emailController.text,
                                    passwordController.text,
                                  ));
                            }
                          : null,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: blackColor,
                      ),
                      child: Text('Login',
                          style: whiteColorTextStyle.copyWith(
                            fontSize: 12,
                          )),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  TextButton(
                      onPressed: () {
                        router.goNamed(RouteNames.signUp);
                      },
                      child: Text(
                        'Don’t have an account? Sign up',
                        style: blackColorTextStyle.copyWith(
                            fontSize: 12, fontWeight: FontWeight.w500),
                      )),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.end,
                  //   children: [
                  //       Image.asset('assets/Image_Assettelor_siginin_bawah.png')
                  // ],
                  // )
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
