import 'package:notesit/homepage.dart';
import 'package:notesit/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/gestures.dart';
import 'package:get/get.dart';
import 'package:notesit/model/user.dart';
import 'package:notesit/services/login_response.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> implements LoginCallBack {
  BuildContext? _ctx;
  bool? _isLoading = false;
  final formKey = new GlobalKey<FormState>();
  var scaffoldKey = new GlobalKey<ScaffoldState>();
  
  String? _email, _password;
  
  LoginResponse? _response;
  
  _LoginPageState() {
    _response = new LoginResponse(this);
  }
  
  void _submit() {
    final form = formKey.currentState;
    
    if (form!.validate()) {
      setState(() {
        _isLoading = true;
        form!.save();
        _response!.doLogin(_email!, _password!);
      });
    }
  }
  
  void _showSnackBar(String text) {
    scaffoldKey = ScaffoldMessenger.of(context).showSnackBar(new SnackBar(
      content: new Text(text),
    )) as GlobalKey<ScaffoldState>;
  }
  // var emailController = TextEditingController();
  // var passwordController = TextEditingController();
  double containerWidth = 500;

  @override
  Widget build(BuildContext context) {
    _ctx = context;
    // var loginBtn = new RaisedButton(
    //   onPressed: _submit,
    //   child: new Text("Login"),
    //   color: Colors.green,
    // );
    
    return Scaffold(
      key: scaffoldKey,
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
                        Text("Login", style: TextStyle(
                          color: Colors.white,
                          fontSize: 46.0,
                          fontWeight: FontWeight.w800
                        ),
                        ),
                        SizedBox(height: 10),
                        Text("Start planning your day!", style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w300
                        ),
                        ),
                      ],
                    ),
                  ),
              ),
              Expanded(
                  flex: 5,
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
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      child: Padding(
                        padding: const EdgeInsets.all(24),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
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
                                child: TextFormField(
                                  onSaved: (val) => _email = val,
                                  decoration: InputDecoration(
                                      hintText: "Email",
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
                                child: TextFormField(
                                  onSaved: (val) => _password = val,
                                  decoration: InputDecoration(
                                      hintText: "Password",
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
                            const SizedBox(height: 50.0),
                            GestureDetector(
                              onTap: _submit,
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
                                    "Log In",
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
                            RichText(
                                text: TextSpan(
                                  text: "Don't have an account?",
                                  style: TextStyle(
                                    color: Colors.grey[500],
                                    fontSize: 20,
                                  ),
                                  children: [
                                    TextSpan(
                                    text: " Create.",
                                    style: TextStyle(
                                      color: Colors.blueGrey,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                      recognizer: TapGestureRecognizer()..onTap = () => Get.to(()=> SignupPage())
                                    )
                                  ]
                                ))
                          ],
                        ),
                      ),
                    ),
                  ))
            ],
          )),
        ),
      );
  }
  
  @override
  void onLoginError(String error) {
    _showSnackBar(error);
    setState(() {
      _isLoading = false;
    });
  }
  
  @override
  void onLoginSuccess(User user) async {
    if(user != null){
      Navigator.of(context).pushNamed(HomePage() as String);
    } else {
      _showSnackBar("Login Failed!");
      setState(() {
        _isLoading = false;
      });
    }
  }
}
