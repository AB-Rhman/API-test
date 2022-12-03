import 'package:flutter/material.dart';
import 'package:login_design/provider/signup_provider.dart';
import 'package:provider/provider.dart';


class Register extends StatelessWidget {
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var numberController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>(); // for the validator

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: _formKey, //
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/Logo.png',
                    height: 100,
                  ),
                  Text(
                    'Rigister',
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w700, // The shape of the Font
                        color: Colors.cyan),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    controller: nameController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return ' Plz Enter a value ';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      labelText: 'User Name',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(
                        Icons.account_circle,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    controller: emailController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Plz Enter a value';
                      }
                      return null;
                    },
                    keyboardType: TextInputType.emailAddress,
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
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Plz Enter a value';
                      }
                      return null;
                    },
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: false,
                    decoration: InputDecoration(
                      labelText: 'Password ',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(
                        Icons.lock_outline,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    controller: numberController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Plz Enter a value';
                      }
                      ;
                      return null;
                    },
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: 'Number',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(
                        Icons.call,
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
                      color: Colors.cyan,
                    ),
                    child: MaterialButton(
                      onPressed: () {
                        Provider.of<SignProvider>(context, listen: false).signup(
                            username: nameController.text,
                            email: emailController.text,
                            pass: passwordController.text,
                            number: numberController.text);
                        // if(_formKey.currentState!.validate());
                        print('done');
                      },
                      child: Text(
                        'Rigister',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
