// YASIR FILE
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: ''),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(top: 80, bottom: 15),
                width: 100,
                height: 100,
                child: Image.asset("assets/images/home_screen_logo.png", width: 2),
              ),
              Container(
                child: Text(
                    "Login Form By Yasir Ahmad",
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                
              ),
              Container(
                margin: EdgeInsets.only(top : 20),
                child: Column(
                  children: [
                    Container(
                      margin : EdgeInsets.only(top: 20, left: 30, right: 30),
                      child: Column(
                        children: [
                          TextFormField(
                            decoration: InputDecoration(
                              hintText: "Username",
                              prefixIcon: Icon(Icons.account_circle, color: Colors.blueAccent,)
                            ),
                          ),
                          TextFormField(
                            obscureText: true,
                            decoration: InputDecoration(

                              hintText: "Password",
                                prefixIcon: Icon(Icons.lock, color: Colors.blueAccent,)
                            )
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 30),
                      child: FlatButton(
                        onPressed: (){},
                        child: Text("Login",
                        style: TextStyle(
                          fontSize: 20,          
                        )
                        ,),
                        color: Colors.blue.shade300,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        splashColor: Colors.blueAccent,
                      ),
                    )
                  ],
                ),
                ),
                 Container(
                    margin: EdgeInsets.only(top: 200),
                    
                child: Text(
                    "Email: khan10055yasir@gmail.com",
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                
              )
            ],
          ),
        ),
      )
    );
  }
}