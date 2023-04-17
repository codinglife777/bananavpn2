import 'package:bananavpn/ui/home/index.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailCont = TextEditingController();
  final TextEditingController _passwordCont = TextEditingController();

  void login() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const NavigationMenu()),
    );
  }

  void signUpGoogle() {}

  void signUpApple() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.transparent,
      //   elevation: 0.0,
      // ),
      body: LayoutBuilder(builder: (context, constraints) {
        return SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: EdgeInsets.only(left: 16, right: 16, top: 100),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SizedBox(
                        width: 137,
                        height: 29,
                        child:
                            Image(image: AssetImage('assets/images/logo.png')),
                      ),
                      IconButton(
                        onPressed: () {
                          // Navigator.pop(context);
                        },
                        iconSize: 32,
                        icon: const Icon(
                          Icons.close,
                          color: Color(0xFF7B8794),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 40),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      "Log in",
                      textAlign: TextAlign.left,
                      style:
                          TextStyle(fontSize: 32, fontWeight: FontWeight.w700),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      const Text(
                        "Don't have an account?",
                        style:
                            TextStyle(fontSize: 16, color: Color(0xFF7B7B7B)),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      InkWell(
                        onTap: () {},
                        child: const Text(
                          "Sign up",
                          style:
                              TextStyle(fontSize: 16, color: Color(0xFFF9B414)),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 5, bottom: 5),
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      "EMAIL",
                      style: TextStyle(
                          color: Color(0xFF323F4B),
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  TextField(
                    controller: _emailCont,
                    decoration: InputDecoration(
                      hintStyle: const TextStyle(
                          color: Color(0xFF010101),
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                      prefixIcon: const Icon(
                        Icons.email_outlined,
                        // color: Colors.grey.shade600,
                        size: 30,
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding: EdgeInsets.all(10),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(color: Color(0xFF7B8794))),
                    ),
                    style: TextStyle(fontSize: 18),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 5, bottom: 5, top: 10),
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      "PASSWORD",
                      style: TextStyle(
                          color: Color(0xFF323F4B),
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  TextField(
                    controller: _passwordCont,
                    decoration: InputDecoration(
                      hintStyle: const TextStyle(
                          color: Color(0xFF010101),
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                      prefixIcon: const Icon(
                        Icons.key,
                        // color: Colors.grey.shade600,
                        size: 30,
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding: EdgeInsets.all(10),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(color: Color(0xFF7B8794))),
                    ),
                    obscureText: true,
                    style: TextStyle(fontSize: 18),
                  ),
                  InkWell(
                      onTap: login,
                      child: Container(
                          height: 52,
                          margin: const EdgeInsets.only(top: 20, bottom: 20),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: const Color(0xFF010101),
                              borderRadius: BorderRadius.circular(24)),
                          child: const Text(
                            "Continue",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 15.0,
                                color: Colors.white,
                                fontWeight: FontWeight.w700),
                          ))),
                  Row(children: [
                    const Text(
                      "By signing up, you agree with our ",
                      style: TextStyle(color: Color(0xFF323F4B), fontSize: 12),
                    ),
                    InkWell(
                      onTap: () {},
                      child: const Text(
                        "Terms of service",
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            overflow: TextOverflow.clip,
                            color: Color(0xFF323F4B),
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ]),
                  Row(
                    children: [
                      const Text(
                        " and ",
                        style: TextStyle(
                            color: Color(0xFF323F4B),
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                      InkWell(
                        onTap: () {},
                        child: const Text(
                          "PrivacyPolicy",
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: Color(0xFF323F4B),
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Expanded(
                          child: Divider(
                        color: Color(0xFF7B8794),
                      )),
                      Padding(
                        padding: EdgeInsets.only(left: 5, right: 5),
                        child: Text("or"),
                      ),
                      Expanded(
                          child: Divider(
                        color: Color(0xFF7B8794),
                      )),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 50),
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    width: double.maxFinite,
                    height: 52,
                    child: FloatingActionButton.extended(
                      heroTag: "1",
                      label: const Text(
                        'Sign Up with Google',
                        style: TextStyle(
                            color: Color(0xFF010101),
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ), // <-- Text
                      backgroundColor: Colors.white,
                      icon: SizedBox(
                          width: 25,
                          height: 25,
                          child: Image.asset("assets/images/google.png")),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    width: double.maxFinite,
                    height: 52,
                    child: FloatingActionButton.extended(
                      heroTag: "2",
                      label: const Text(
                        'Sign Up with Apple',
                        style: TextStyle(
                            color: Color(0xFF010101),
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ), // <-- Text
                      backgroundColor: Colors.white,
                      icon: SizedBox(
                          width: 25,
                          height: 25,
                          child:
                              Image.asset("assets/images/apple_black@2x.png")),
                      onPressed: () {},
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
