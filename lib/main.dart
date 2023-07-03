/*
 *
 *   Created Your Sujanmahat on 7/2/23, 4:45 PM
 *   Copyright Ⓒ 2023. All rights reserved Ⓒ 2023 http://freefuninfo.com/
 *   Last modified: 7/2/23, 4:38 PM
 *
 *   Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file
 *   except in compliance with the License. You may obtain a copy of the License at
 *   http://www.apache.org/licenses/LICENS... Unless required by applicable law or agreed to in writing, software
 *    distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND,
 *    either express or implied. See the License for the specific language governing permissions and
 *    limitations under the License.
 */

import 'package:flutter/material.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final ValueNotifier<bool> rememberMe = ValueNotifier<bool>(false);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Log-In UI',
      home: Scaffold(
        body: Center(
          child: Padding(
            padding: EdgeInsets.only(top: 100, bottom: 15, left: 15, right: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome back',
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Welcome Back! Please enter your details.',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black26,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Email',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black54,
                  ),
                ),
                SizedBox(height: 15),
                TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    labelText: 'Enter your email',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 15),
                Text(
                  'Password',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black54,
                  ),
                ),
                SizedBox(height: 15),
                TextField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Enter your password',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 15),
                Row(
                  children: [
                    Checkbox(
                      value: rememberMe.value,
                      onChanged: (value) {
                        rememberMe.value = value!;
                      },
                    ),
                    Text('Remember for 30 days'),
                    Spacer(),
                    TextButton(
                      onPressed: () {
                        // Perform the "Forgot Password" action here
                        print('Forgot Password');
                      },
                      child: Text(
                        'Forgot Password?',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.deepPurple,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          // Perform the "Sign In" action here
                          print('Sign In');
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.deepPurple),
                        ),
                        child: Text('Sign In'),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          // Perform the "Sign In with Google" action here
                          print('Sign In with Google');
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                        ),
                        child: Text(
                          'Sign in with Google',
                          style: TextStyle(
                            color: Colors.black54,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15),
                Center(
                  child: Padding(
                    padding: EdgeInsets.only( left: 75, right: 75),
                  child: Row(
                    children: [
                      Text(
                        "Don't Have an account?",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.black54,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          // Perform the "Sign Up" action here
                          print('Sign Up');
                        },
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.deepPurple,
                          ),
                        ),
                      ),
                    ],
                  ),
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
