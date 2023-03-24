// import 'package:application_1/auth_controller.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          constraints: BoxConstraints(
            maxHeight: MediaQuery.of(context).size.height,
            maxWidth: MediaQuery.of(context).size.width,
          ),
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.blue,
                Colors.blueGrey,
              ],
              begin: Alignment.topLeft,
              end: Alignment.centerRight,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 36.0, horizontal: 24.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text("Sign Up", style: TextStyle(
                          color: Colors.white,
                          fontSize: 43.0,
                          fontWeight: FontWeight.w800
                      ),
                      ),
                      SizedBox(height: 5.0),
                      Text("It's quick and easy", style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w300
                      ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 8,
                child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: Colors.white10,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40)
                      )
                  ),
                  child: Form(
                    child: Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(30),
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 10,
                                        offset: Offset(1, 1),
                                        color: Colors.grey.withOpacity(0.5)
                                      )
                                    ]
                                  ),
                                  child: TextField(
                                    controller: emailController,
                                    decoration: InputDecoration(
                                      hintText: "Your email",
                                      prefixIcon: Icon(Icons.email, color: Colors.grey),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(30),
                                        borderSide: BorderSide(
                                          color: Colors.white,
                                          width: 1
                                        )
                                      ),
                                        enabledBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(30),
                                            borderSide: BorderSide(
                                              color: Colors.white,
                                              width: 1
                                            )
                                        ),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(30)
                                      )
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 10),
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(30),
                                      boxShadow: [
                                        BoxShadow(
                                            blurRadius: 10,
                                            offset: Offset(1, 1),
                                            color: Colors.grey.withOpacity(0.5)
                                        )
                                      ]
                                  ),
                                  child: TextField(
                                    controller: passwordController,
                                    obscureText: true,
                                    decoration: InputDecoration(
                                        hintText: "Your password",
                                        prefixIcon: Icon(Icons.lock_outline, color: Colors.grey),
                                        focusedBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(30),
                                            borderSide: BorderSide(
                                                color: Colors.white,
                                                width: 1
                                            )
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(30),
                                            borderSide: BorderSide(
                                                color: Colors.white,
                                                width: 1
                                            )
                                        ),
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(30)
                                        )
                                    ),
                                  ),
                                ),
                              ),
                            const SizedBox(height: 10.0),

                            const SizedBox(height: 20.0),
                            GestureDetector(
                              onTap: (){
                                // AuthController.instance.register(emailController.text.trim(), passwordController.text.trim());
                              },
                              child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: MediaQuery.of(context).size.height,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    gradient: const LinearGradient(
                                      colors: [
                                        Colors.blue,
                                        Colors.blueGrey,
                                      ],
                                      begin: Alignment.topLeft,
                                      end: Alignment.centerRight,
                                    ),
                                  ),
                                  child: const Center(
                                    child: Text(
                                      "Sign Up",
                                      style: TextStyle(
                                        fontSize: 36,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                            ),
                            const SizedBox(height: 30.0),
                            RichText(text: TextSpan(
                              recognizer: TapGestureRecognizer()..onTap = () => Get.back(),
                              text: 'Have an account?',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.grey[500]
                              )
                            ))
                        ],
                      ),
                      ]
                    ),
                  ),
                ),
              )
              )
            ],
          ),
        ),
      ),
    );
  }
}
