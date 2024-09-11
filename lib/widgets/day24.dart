import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:thirty_widgets/functions/authfunctions.dart';

class Day24Authentication extends StatefulWidget {
  const Day24Authentication({super.key});

  @override
  State<Day24Authentication> createState() => _Day24AuthenticationState();
}

class _Day24AuthenticationState extends State<Day24Authentication> {
  final _formKey = GlobalKey<FormState>();
  bool isLogin = true;
  String username = '';
  String email = '';
  String password = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Email/Pass Auth"),
        
      ),
      body: Form(
        key: _formKey,
        child: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              !isLogin
                  ? TextFormField(
                      key: ValueKey("username"),
                      decoration: InputDecoration(hintText: 'Enter Username'),
                      validator: (value) {
                        if (value.toString().length < 3) {
                          return 'Username is so small';
                        } else {
                          return null;
                        }
                      },
                      onSaved: (value) {
                        setState(() {
                          username = value!;
                        });
                      },
                    )
                  : Container(),
              TextFormField(
                key: ValueKey("email"),
                decoration: InputDecoration(hintText: 'Enter email'),
                validator: (value) {
                  if (!(value.toString().contains('@'))) {
                    return 'Inavlid email';
                  } else {
                    return null;
                  }
                },
                onSaved: (value) {
                  setState(() {
                    email = value!;
                  });
                },
              ),
              TextFormField(
                obscureText: true,
                key: ValueKey("Password"),
                decoration: InputDecoration(hintText: 'Enter Password'),
                validator: (value) {
                  if (value.toString().length < 6) {
                    return 'Password is so small';
                  } else {
                    return null;
                  }
                },
                onSaved: (value) {
                  setState(() {
                    password = value!;
                  });
                },
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                      isLogin
                          ? signin(email, password)
                          : signup(email, password);
                    }
                  },
                  child: isLogin ? Text("Login") : Text("Sign Up"),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextButton(
                  onPressed: () {
                    setState(() {
                      isLogin = !isLogin;
                    });
                  },
                  child: isLogin
                      ? Text("Don't have an account? Sign Up")
                      : Text("Already Signed Up? Login"))
            ],
          ),
        ),
      ),
    );
  }
}
