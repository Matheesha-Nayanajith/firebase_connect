import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_connect/pages/homepage.dart';
import 'package:firebase_connect/pages/myhomepage.dart';
import 'package:flutter/material.dart';

class Signuppage extends StatefulWidget {
  const Signuppage({Key? key}) : super(key: key);

  @override
  _SignuppageState createState() => _SignuppageState();
}

class _SignuppageState extends State<Signuppage> {
  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _passwordcontroller = TextEditingController();
  final _firebaseAuth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text("sign Up page"),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Center(
            child: Form(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height / 7,
                ),
                Container(
                  child: Text(
                    "sign up Here!",
                    style:
                        TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0),
                  child: Container(
                    child: TextFormField(
                      controller: _emailcontroller,
                      decoration: InputDecoration(labelText: "Email Address"),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 50,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0),
                  child: Container(
                    child: TextFormField(
                      obscureText: true,
                      controller: _passwordcontroller,
                      decoration: InputDecoration(labelText: "Password"),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0),
                  child: Container(
                      child: MaterialButton(
                    onPressed: () async {
                      await _firebaseAuth
                          .createUserWithEmailAndPassword(
                              email: _emailcontroller.text,
                              password: _passwordcontroller.text)
                          .then((value) => Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext conext) =>
                                      MyHomePage())));
                    },
                    height: 40.0,
                    minWidth: 100.0,
                    color: Colors.orange,
                    child: Text(
                      "sign up",
                      style: TextStyle(
                          fontSize: 15.0, fontWeight: FontWeight.bold),
                    ),
                  )),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 20,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext conext) => HomePage()));
                  },
                  child: Text("Already have an account "),
                )
              ],
            )),
          ),
        ),
      ),
    );
  }
}
