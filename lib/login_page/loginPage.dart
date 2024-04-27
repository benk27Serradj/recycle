import 'package:Dawir/singn_up/signUp.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'assets/images/login.jpg', // Path to your image asset
                width: 400,
                height: 350, // Adjust the width and height as needed
              ),
              Text(
                'Welcome Back!',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Roboto',
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  'Recycle your waste better and get',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey,
                    fontFamily: 'Roboto',
                  ),
                ),
              ),
              Text(
                'more rewards',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey,
                  fontFamily: 'Roboto',
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Email Address',
                    border: OutlineInputBorder(),
                    labelStyle: TextStyle(
                      fontFamily: 'Roboto', // Replace 'Roboto' with the desired font family
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(),
                    labelStyle: TextStyle(
                      fontFamily: 'Roboto', // Replace 'Roboto' with the desired font family
                    ),
                  ),
                ),
              ),
              SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: 340,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {

                          Navigator.pushNamed(context, '/home');
                                 },
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF02AD5B), // Set button background color to green
                    ),
                    child: Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      decoration: TextDecoration.none,
                      fontFamily: 'Roboto',
                    ),
                  ),
                  SizedBox(width: 5), // Add some spacing between the text
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/signup');
                    },
                    child: Text(
                      "Sign up now",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.none,
                        fontFamily: 'Roboto',
                      ),

                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
