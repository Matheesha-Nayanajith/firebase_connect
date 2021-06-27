import 'package:firebase_connect/pages/signuppage.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text("Home Page"),
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
                    "Login Here!",
                    style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
                  ),
                ),

                SizedBox(
                  height: MediaQuery.of(context).size.height / 20,
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0),
                  child: Container(
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: "Email Address"
                      ),
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
                      decoration: InputDecoration(
                          labelText: "Password"
                      ),
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
                      onPressed: () {},
                      height: 40.0,
                      minWidth: 100.0,
                      color: Colors.orange,
                      child: Text("Login" , style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),),
                    )
                  ),
                ),
              SizedBox(
              height: MediaQuery.of(context).size.height / 20,
        ),
               GestureDetector(
                 onTap: (){
                   Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext conext ) => Signuppage() ));
                 },
                 child: Text("Don't have an account"),
               )
              ],
            )),
          ),
        ),
      ),
    );
  }
}
