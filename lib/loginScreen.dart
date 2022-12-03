import 'package:flutter/material.dart';
import 'package:login_design/provider/login_provider.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatelessWidget {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            alignment: Alignment.center,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 150,
                ),
                Text(
                  'Login',
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w700, // The shape of the Font
                      color: Colors.cyan),
                ),
                SizedBox(
                  height: 30,
                ),
                TextFormField(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  // To add sign ( @ ) on keyboard when you start write
                  decoration: InputDecoration(
                    labelText: 'Email Address',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(
                      Icons.email_outlined,
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  controller: passwordController,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password ',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(
                      Icons.lock_outline,
                    ),
                    suffixIcon: Icon(
                      Icons.remove_red_eye,
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blueAccent,
                  ),
                  child: MaterialButton(
                    onPressed: () {
                      Provider.of<LoginProvider>(context, listen: false).login(
                          email: emailController.text,
                          pass: passwordController.text);
                    },
                    child: Text(
                      'login',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  height: 28,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Don\'t have an account ...'),
                    GestureDetector(
                      onTap: (){
                        print('GG');

                      },
                      child: Text(
                          'Signup NOW',
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
