import 'package:e_commerce/pages/Cart_Screen/add_address_page.dart';
import 'package:e_commerce/pages/Cart_Screen/cart_page.dart';
import 'package:e_commerce/pages/Cart_Screen/checkout_page.dart';
import 'package:e_commerce/pages/Cart_Screen/new_card_page.dart';
import 'package:e_commerce/pages/Edit_page/change_password_page.dart';
import 'package:e_commerce/pages/Edit_page/edit_profile_page.dart';
import 'package:e_commerce/pages/Home_Screen/children_category.dart';
import 'package:e_commerce/pages/Home_Screen/home_page.dart';
import 'package:e_commerce/pages/Home_Screen/layout_page.dart';
import 'package:e_commerce/pages/Home_Screen/men_category.dart';
import 'package:e_commerce/pages/Home_Screen/overview_page.dart';
import 'package:e_commerce/pages/Home_Screen/women_category.dart';
import 'package:e_commerce/pages/LogIn_SignUp_Pages/create_new_password.dart';
import 'package:e_commerce/pages/LogIn_SignUp_Pages/forgot_password.dart';
import 'package:e_commerce/pages/LogIn_SignUp_Pages/get_started_screen.dart';
import 'package:e_commerce/pages/LogIn_SignUp_Pages/login_page.dart';
import 'package:e_commerce/pages/LogIn_SignUp_Pages/signup_page.dart';
import 'package:e_commerce/pages/LogIn_SignUp_Pages/splash_screen.dart';
import 'package:e_commerce/pages/LogIn_SignUp_Pages/verifaction_code_sign_up.dart';
import 'package:e_commerce/pages/LogIn_SignUp_Pages/verification_code_forgot_password.dart';
import 'package:e_commerce/pages/Orders_Pages/details_page.dart';
import 'package:e_commerce/pages/Orders_Pages/orders_page.dart';
import 'package:e_commerce/pages/Payment_Pages/new_card_edit_page.dart';
import 'package:e_commerce/pages/Payment_Pages/payment_page.dart';
import 'package:e_commerce/pages/Search_Sreen/search_page.dart';
import 'package:e_commerce/pages/Setting_Pages/setting_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'B&SStore',
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      routes: {
        SplashScreen.routeName: (context) => const SplashScreen(),
        SettingPage.routeName: (context) => const SettingPage(),
        GetStartedScreen.routeName: (context) => const GetStartedScreen(),
        ForgotPassword.routeName: (context) => ForgotPassword(),
        VerificationCodeSignUp.routeName: (context) =>
            const VerificationCodeSignUp(),
        VerificationCodeForgotPassword.routeName: (context) =>
            const VerificationCodeForgotPassword(),
        CreateNewPassword.routeName: (context) => const CreateNewPassword(),
        HomeScreen.routeName: (context) => const HomeScreen(),
        MenCategory.routeName: (context) => const MenCategory(),
        LayoutPage.routeName: (context) => const LayoutPage(),
        EditProfilePage.routeName: (context) => EditProfilePage(),
        ChangepasswordPage.routeName: (context) => const ChangepasswordPage(),
        PaymentPage.routName: (context) => const PaymentPage(),
        NewCardEditPage.routeName: (context) => const NewCardEditPage(),
        OrdersPage.routeName: (context) => const OrdersPage(),
        DetailsPage.routeName: (context) => const DetailsPage(),
        WomenCategory.routeName: (context) => const WomenCategory(),
        ChildrenCategory.routeName: (context) => const ChildrenCategory(),
        OverviewPage.routeName: (context) => const OverviewPage(),
        SearchPage.routeName: (context) => const SearchPage(),
        CartPage.routeName: (context) => const CartPage(),
        CheckoutPage.routeName: (context) => const CheckoutPage(),
        NewCardPage.routeName: (context) => const NewCardPage(),
        AddAddressPage.routeName: (context) => AddAddressPage(),
        LoginPage.routeName: (context) => const LoginPage(),
        SignUpPage.routeName: (context) => const SignUpPage(),
      },
    );
  }
}
