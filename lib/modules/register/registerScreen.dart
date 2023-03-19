import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../components/components.dart';
import '../../layout/layoutScreen.dart';
import '../login/LoginCubit/LoginCubit.dart';
import '../login/LoginCubit/LoginStates.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});
  var emailController = TextEditingController();
  var fullNameController = TextEditingController();
  var passWordController = TextEditingController();
  var passConfirmController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context)=> LoginCubit(),
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
                        height: 300,
                        width: 300,
                      ),
                      
                      // login text
                      const Text(
                        'Create acounte',
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
                            // Full Name form field
                            defultFormField(
                              controller: fullNameController,
                              keyboardType: TextInputType.emailAddress,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return null;
                                }
                              },
                              textlabel: 'Full Name',
                              prefixIcon: Icons.person,
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            
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
                            const SizedBox(
                              height: 20.0,
                            ),
                            // PassWord form field
                            defultFormField(
                                controller: passConfirmController,
                                keyboardType: TextInputType.visiblePassword,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return null;
                                  }
                                  return null;
                                },
                                textlabel: 'Confirm PassWord',
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
                            const SizedBox(
                              height: 20.0,
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
                                  'REGISTER',
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
                                  'You have acount ?',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14.0,
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {
                                    navigateTo(context, RegisterScreen());
                                  },
                                  child: const Text('Log In',
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
