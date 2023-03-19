import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../components/components.dart';
import '../../layout/layoutScreen.dart';
import '../register/registerScreen.dart';
import 'LoginCubit/LoginCubit.dart';
import 'LoginCubit/LoginStates.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  var emailController = TextEditingController();
  var passWordController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(),
      child: BlocConsumer<LoginCubit, LoginStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return SafeArea(
            child: Scaffold(
              backgroundColor: const Color(0xFF46C2CB),
              body: Padding(
                padding: const EdgeInsets.only(
                  top: 20,
                  right: 25,
                  left: 25,
                ),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // image
                      const Image(
                        image: AssetImage('assets/images/login.png'),
                        height: 330,
                        width: 330,
                      ),
                      // login text
                      const Text(
                        'LOGIN',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 30.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      // login form
                      Form(
                        key: formKey,
                        child: Column(
                          children: [
                            // Email form field
                            defultFormField(
                              controller: emailController,
                              keyboardType: TextInputType.emailAddress,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return null;
                                }
                              },
                              textlabel: 'Email',
                              prefixIcon: Icons.email,
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            // PassWord form field
                            defultFormField(
                                controller: passWordController,
                                keyboardType: TextInputType.visiblePassword,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return null;
                                  }
                                  return null;
                                },
                                textlabel: 'PassWord',
                                prefixIcon: Icons.lock,
                                suffixIcon: LoginCubit.get(context).suffix,
                                isPassWord: LoginCubit.get(context).isPassword,
                                onPressedSuffix: () {
                                  LoginCubit.get(context).changeVisibility(
                                      LoginCubit.get(context).isPassword);
                                },
                                onFieldSubmitted: (value) {
                                  if (formKey.currentState!.validate()) {
                                    navigateAndFinish(
                                        context, const LayoutScreen());
                                  }
                                }),
                            // Forget PassWord
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                TextButton(
                                  onPressed: () {
                                    navigateTo(context, RegisterScreen());
                                  },
                                  child: const Text('Forget PassWord',
                                      style: TextStyle(
                                          color: Color(0xFF064492), fontSize: 14.0)),
                                ),
                              ],
                            ),

                            // Button submite
                            Container(
                              width: double.infinity,
                              height: 53.5,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.0),
                                color: const Color(0xFFECFFFE),
                              ),
                              child: MaterialButton(
                                onPressed: () {
                                  if (formKey.currentState!.validate()) {
                                    navigateAndFinish(
                                        context, const LayoutScreen());
                                  }
                                },
                                child: const Text(
                                  'LOGIN',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 24.0,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                            // Creat acount
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  'You don\'t have acount ?',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14.0,
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {
                                    navigateTo(context, RegisterScreen());
                                  },
                                  child: const Text('Creat acount',
                                      style: TextStyle(
                                          color: Color(0xFF064492), fontSize: 14.0)),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
