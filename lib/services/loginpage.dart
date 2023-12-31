import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class loginPage extends StatefulWidget {
  const loginPage({super.key});

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  bool isPasswordShow = false;
  bool isRegisterPageShow = false;
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  String? _validatePwdLength(String? value) {
    if (value!.length != 8) {
      return 'Minimun 8 Chars';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Form(
                key: _formKey,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(40, 170, 40, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Login",
                          style: GoogleFonts.poppins(
                              fontSize: 40, fontWeight: FontWeight.w800)
                          // TextStyle(
                          //     fontSize: 35, fontWeight: FontWeight.w800),
                          ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 2, 0, 50),
                        child: Text(
                          "please sign in to continue.",
                          style: GoogleFonts.poppins(
                              color: const Color.fromARGB(96, 70, 70, 70)),
                        ),
                      ),
                      Card(
                        elevation: 2,
                        shadowColor: Colors.blueAccent,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        child: Padding(
                          padding: const EdgeInsets.all(7.0),
                          child: TextField(
                            controller: _emailController,
                            style: GoogleFonts.poppins(
                                color: Color.fromARGB(200, 0, 0, 0)),
                            decoration: InputDecoration(
                                label: Text("EMAIL"),
                                labelStyle: TextStyle(
                                    color: const Color.fromARGB(110, 0, 0, 0)),
                                prefixIcon: const Icon(
                                  Icons.email_outlined,
                                  color: Color.fromARGB(255, 0, 0, 0),
                                ),
                                suffixIcon: GestureDetector(
                                  onTap: () {
                                    _emailController.clear();
                                    // _emailController.text = '';
                                    setState(() {});
                                  },
                                  child: const Icon(
                                    Icons.clear,
                                    color: Color.fromARGB(255, 0, 0, 0),
                                  ),
                                ),
                                fillColor:
                                    const Color.fromARGB(255, 255, 255, 255),
                                filled: true,
                                border: const OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)))),
                            // validator: _validatePwdLength
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.04,
                      ),
                      Card(
                        elevation: 2,
                        shadowColor: Colors.blueAccent,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        child: Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: TextFormField(
                            controller: _passwordController,
                            obscureText: !isPasswordShow,
                            obscuringCharacter: '⬤',
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                                label: Text(
                                  "PASSWORD",
                                  style: GoogleFonts.poppins(
                                      color:
                                          const Color.fromARGB(110, 0, 0, 0)),
                                ),
                                prefixIcon: const Icon(
                                  Icons.lock_outline_rounded,
                                  color: Color.fromARGB(255, 0, 0, 0),
                                ),
                                suffixIcon: GestureDetector(
                                  onTap: () {
                                    isPasswordShow = !isPasswordShow;
                                    setState(() {});
                                  },
                                  child: Icon(
                                    isPasswordShow
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                    color: const Color.fromARGB(255, 0, 0, 0),
                                  ),
                                ),
                                fillColor:
                                    const Color.fromARGB(255, 255, 255, 255),
                                filled: true,
                                border: const OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)))),
                            validator: _validatePwdLength,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(
                            MediaQuery.of(context).size.width * 0.6,
                            50,
                            MediaQuery.of(context).size.width * 0,
                            0),
                        child: GestureDetector(
                          onTap: () {},
                          child: Card(
                            elevation: 5,
                            shadowColor: Colors.blueAccent,
                            color: Colors.blueAccent,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            child: SizedBox(
                                height: 50,
                                width: 130,
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(28, 0, 5, 0),
                                      child: Text(
                                        "LOGIN",
                                        style: GoogleFonts.poppins(
                                            fontWeight: FontWeight.w800,
                                            color: const Color.fromARGB(
                                                255, 255, 255, 255)
                                            // fontWeight: FontWeight.w900,
                                            // color: Colors.white
                                            ),
                                      ),
                                    ),
                                    Icon(
                                      Icons.arrow_forward_outlined,
                                      color: Colors.white,
                                    ),
                                  ],
                                )),
                          ),
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(110, 0, 50, 30),
                        child: GestureDetector(
                          onTap: () {},
                          child: const Row(
                            children: [
                              Text(
                                "Don't have an Account?",
                                style: TextStyle(color: Colors.black),
                              ),
                              Text(
                                "register now",
                                style: TextStyle(
                                    color: Colors.blueAccent,
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ))));
  }
}
