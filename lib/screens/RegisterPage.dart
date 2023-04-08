import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          children: [
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
              'Sign up to continue',
              style: TextStyle(fontSize: 11),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.all(16),
              child: TextFormField(
                decoration: InputDecoration(
                  label: Text("Full name "),
                  hintStyle: TextStyle(fontSize: 12),
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.man),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(16),
              child: TextFormField(
                decoration: InputDecoration(
                  label: Text("Email"),
                  hintStyle: TextStyle(fontSize: 12),
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.mail),
                ),
              ),
            ),
             Container(             
              margin: EdgeInsets.all(16),
              child: TextFormField(
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
              margin: EdgeInsets.all(16),
              child: TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  label: Text("password again"),
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
                  Navigator.pushNamed(context, 'HomePage');
                },
                child: Text(
                  'Sign up',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
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
                    'Already have an acount?',
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, 'LoginPage');
                      },
                      child: Text(
                        'Login',
                        style: TextStyle(color: Colors.blue),
                      )),
                  Spacer(
                    flex: 1,
                  ),
                ],
              ),
            ),
          )
          ],
        ),
      ),
    );
  }
}
