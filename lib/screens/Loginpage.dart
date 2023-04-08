import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  GlobalKey<FormState> formKey = GlobalKey();

  AutovalidateMode autovalidate = AutovalidateMode.disabled;

  String? Email, Pass;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formKey,
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            child: Column(children: [
              Container(
                margin: EdgeInsets.only(top: 40, bottom: 16),
                height: 72,
                width: 72,
                child: CircleAvatar(
                  radius: 10,
                  backgroundImage: AssetImage('images/Lafyuu.png'),
                ),
              ),
              Text(
                'Welcome to Lafyuu',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              Text(
                'Sign in to continue',
                style: TextStyle(fontSize: 11),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.all(16),
                child: TextFormField(
                  onSaved: (value) {
                    Email = value;
                  },
                  validator: (Email) {
                    if (Email?.isEmpty ?? true) {
                      return 'Field is required';
                    } else {
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                    label: Text("Your email"),
                    hintStyle: TextStyle(fontSize: 12),
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.mail),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(16),
                child: TextFormField(
                  onSaved: (Value) {
                    Pass = Value;
                  },
                  validator: (pass) {
                    if (pass?.isEmpty ?? true) {
                      return 'Field is required';
                    } else {
                      return null;
                    }
                  },
                  obscureText: true,
                  decoration: InputDecoration(
                    label: Text("Password"),
                    hintStyle: TextStyle(fontSize: 12),
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.lock),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 50,
                margin: EdgeInsets.only(right: 16, left: 16),
                child: ElevatedButton(
                  onPressed: () {
                     if (formKey.currentState!.validate()) {
                    Navigator.pushNamed(context, 'HomePage');
                     }
                  },
                  child: Text(
                    'Sign in',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Row(children: [
                Container(
                  margin: EdgeInsets.all(16),
                  width: 180,
                  child: Divider(
                    color: Colors.grey,
                    thickness: 2,
                  ),
                ),
                Spacer(
                  flex: 1,
                ),
                Container(
                  child: Text(
                    'OR',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                  ),
                ),
                Spacer(
                  flex: 1,
                ),
                Container(
                  margin: EdgeInsets.all(16),
                  width: 180,
                  child: Divider(
                    color: Colors.grey,
                    thickness: 2,
                  ),
                ),
              ]),
              Container(
                width: 350,
                height: 40,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                ),
                child: MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14)),
                  onPressed: () {},
                  child: Row(
                    children: [
                      Image.asset(
                        "images/google.jpg",
                        width: 40,
                        height: 40,
                      ),
                      SizedBox(
                        width: 90,
                      ),
                      Text(
                        'Login with Google',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),
                      Spacer(
                        flex: 1,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 350,
                height: 40,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                ),
                child: MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14)),
                  onPressed: () {},
                  child: Row(
                    children: [
                      Image.asset("images/facebook.png"),
                      SizedBox(
                        width: 100,
                      ),
                      Text(
                        'Login with Facebook',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(color: Colors.blue),
                  )),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Center(
                  child: Row(
                    children: [
                      Spacer(
                        flex: 1,
                      ),
                      Text(
                        'Dont have a account?',
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, 'RegisterPage');
                          },
                          child: Text(
                            'Register',
                            style: TextStyle(color: Colors.blue),
                          )),
                      Spacer(
                        flex: 1,
                      ),
                    ],
                  ),
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
