import 'package:e_commerce/Edit_page/change_password_page.dart';
import 'package:e_commerce/Edit_page/edit_profile_page.dart';
import 'package:e_commerce/Home_Screen/home_page.dart';
import 'package:e_commerce/Home_Screen/layout_page.dart';
import 'package:e_commerce/Home_Screen/men_category.dart';
import 'package:e_commerce/LogIn_SignUp_Pages/create_new_password.dart';
import 'package:e_commerce/LogIn_SignUp_Pages/forgot_password.dart';
import 'package:e_commerce/LogIn_SignUp_Pages/get_started_screen.dart';
import 'package:e_commerce/LogIn_SignUp_Pages/login_page.dart';
import 'package:e_commerce/LogIn_SignUp_Pages/signup_page.dart';
import 'package:e_commerce/LogIn_SignUp_Pages/splash_screen.dart';
import 'package:e_commerce/LogIn_SignUp_Pages/verifaction_code_sign_up.dart';
import 'package:e_commerce/LogIn_SignUp_Pages/verification_code_forgot_password.dart';
import 'package:e_commerce/Orders_Pages/details_page.dart';
import 'package:e_commerce/Orders_Pages/orders_page.dart';
import 'package:e_commerce/Payment_Pages/new_card_page.dart';
import 'package:e_commerce/Payment_Pages/payment_page.dart';
import 'package:e_commerce/Setting_Pages/setting_page.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> routes = {
  SettingPage.routeName: (context) => const SettingPage(),
  SplashScreen.routeName: (context) => const SplashScreen(),
  GetStartedScreen.routeName: (context) => const GetStartedScreen(),
  SignUpPage.routeName: (context) => const SignUpPage(),
  LoginPage.routeName: (context) => const LoginPage(),
  ForgotPassword.routeName: (context) => ForgotPassword(),
  VerificationCodeSignUp.routeName: (context) => const VerificationCodeSignUp(),
  VerificationCodeForgotPassword.routeName: (context) =>
      const VerificationCodeForgotPassword(),
  CreateNewPassword.routeName: (context) => const CreateNewPassword(),
  HomeScreen.routeName: (context) => const HomeScreen(),
  MenCategory.routeName: (context) => const MenCategory(),
  LayoutPage.routeName: (context) => const LayoutPage(),
  EditProfilePage.routeName: (context) => EditProfilePage(),
  ChangepasswordPage.routeName: (context) => const ChangepasswordPage(),
  PaymentPage.routName: (context) => const PaymentPage(),
  NewCardPage.routeName: (context) => const NewCardPage(),
  OrdersPage.routeName: (context) => const OrdersPage(),
  DetailsPage.routeName: (context) => const DetailsPage(),
  
};
