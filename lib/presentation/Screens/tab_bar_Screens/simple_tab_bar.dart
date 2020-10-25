import 'package:flutter/material.dart';
import 'package:scarf_app/presentation/Screens/tab_bar_Screens/Log_in_page.dart';
import 'package:scarf_app/presentation/Screens/tab_bar_Screens/Sign_up_screen.dart';
import 'package:scarf_app/presentation/Screens/tab_bar_Screens/forgot_password_screen.dart';

class SimpleTabBar extends StatefulWidget {
  @override
  _SimpleTabBarState createState() => _SimpleTabBarState();
}

class _SimpleTabBarState extends State<SimpleTabBar> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: Colors.white,
         appBar: AppBar(
           backgroundColor: Colors.transparent,
           elevation: 0.0,
           bottom: TabBar(
             isScrollable: true,
             tabs: [
               Tab(
                 child: Text(
                   "Sign Up",
                   style: TextStyle(
                     fontWeight: FontWeight.bold,
                     fontSize: 16,
                     color: Colors.pinkAccent
                   ),
                 ),
               ),
               Tab(
                 child: Text(
                   "Log In",
                   style: TextStyle(
                       fontWeight: FontWeight.bold,
                       fontSize: 16,
                       color: Colors.pinkAccent
                   ),
                 ),
               ),
               Tab(
                 child: Text(
                   "Forgot Password",
                   style: TextStyle(
                       fontWeight: FontWeight.bold,
                       fontSize: 16,
                       color: Colors.pinkAccent
                   ),
                 ),
               ),
             ],
           ),
         ),
          body: TabBarView(
            children: [
              SignUpScreen(),
              LogInScreen(),
              ForgotPasswordScreen(),
            ],
          ),
        ),
      ),
    );
  }
}
