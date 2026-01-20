import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:login_app_design/src/pages/slash_page/widgets/main_navigation.dart';

class LoginPage extends StatelessWidget {
  final void Function()? onTap;
  const LoginPage({super.key, this.onTap});
  @override
  Widget build(BuildContext context) {
    bool isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(vertical: isLandscape ? 30.0 : 0.0),
            child: Column(
              children: [
                Container(
                  width: isLandscape
                      ? 500.0
                      : MediaQuery.of(context).size.width,
                  height: isLandscape ? 300.0 : 400.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/background.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 30.0,
                        width: 80.0,
                        height: 200.0,
                        child: FadeInUp(
                          duration: Duration(seconds: 1),
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/images/light-1.png'),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        right: 30.0,
                        top: 40.0,
                        width: 80.0,
                        height: 150.0,
                        child: FadeInUp(
                          duration: Duration(milliseconds: 1300),
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/images/clock.png'),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        child: FadeInUp(
                          duration: Duration(milliseconds: 1600),
                          child: Container(
                            margin: const EdgeInsets.only(top: 10.0),
                            child: Center(
                              child: Text(
                                'Login',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 40.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(30.0),
                  child: Column(
                    children: [
                      FadeInUp(
                        duration: Duration(milliseconds: 1800),
                        child: Container(
                          width: isLandscape
                              ? 500.0
                              : MediaQuery.of(context).size.width,
                          padding: EdgeInsets.all(5.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.0),
                            border: Border.all(
                              color: Color.fromRGBO(143, 148, 251, 0.2),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromRGBO(143, 148, 251, 0.2),
                                blurRadius: 20.0,
                                offset: Offset(0, 10),
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              Container(
                                width: isLandscape
                                    ? 500.0
                                    : MediaQuery.of(context).size.width,
                                padding: EdgeInsets.all(8.0),
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      color: Color.fromRGBO(143, 148, 251, 0.2),
                                    ),
                                  ),
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Email or Phone Number',
                                    hintStyle: TextStyle(
                                      color: Colors.grey[700],
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(8.0),

                                child: TextField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Password',
                                    hintStyle: TextStyle(
                                      color: Colors.grey[700],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 30.0),
                      FadeInUp(
                        duration: Duration(milliseconds: 1900),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const MainNavigation(),
                              ),
                            );
                          },
                          child: Container(
                            width: isLandscape
                                ? 500.0
                                : MediaQuery.of(context).size.width,
                            height: 50.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              gradient: LinearGradient(
                                colors: [
                                  Color.fromRGBO(143, 148, 251, 1),
                                  Color.fromRGBO(143, 148, 251, 0.6),
                                ],
                              ),
                            ),
                            child: Center(
                              child: Text(
                                'Login',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 30.0),
                      FadeInUp(
                        duration: Duration(milliseconds: 1900),
                        child: Text(
                          'Forgot Password?',
                          style: TextStyle(
                            color: Color.fromRGBO(143, 148, 251, 1),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                FadeInUp(
                  duration: Duration(milliseconds: 1900),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Not a member?',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                      const SizedBox(width: 4),
                      GestureDetector(
                        onTap: onTap, // Uses the toggle function
                        child: Text(
                          'Register now',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
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
  }
}
