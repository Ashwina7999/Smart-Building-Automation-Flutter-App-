import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var width = size.width as double;
    print(width);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _purplelogo(size),
             Container(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                children: [
                  _username(),
                  _password(),
                  _loginbutton(),
                  Text(
                    "Don't have an account ?",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xffFF0000),
                    ),
                  ),
                  _signup(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _purplelogo(size) {
  return Container(
    height: size.height * .3,
    decoration: BoxDecoration(
      image: DecorationImage(
        alignment: Alignment.topCenter,
        image: AssetImage('assets/images/new1.png'),
      ),
    ),
    child: SafeArea(
      child: Align(
        child: Image.asset(
          "assets/images/logo.png",
          height: 100,
          width: 100,
        ),
      ),
    ),
  );
}

Widget _username() {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(
        Radius.circular(50),
      ),
      boxShadow: [
        new BoxShadow(
          color: Colors.grey,
          blurRadius:
              3.0, // You can set this blurRadius as per your requirement
        ),
      ],
    ),
    margin: EdgeInsets.only(top: 50),
    child: TextField(
      style: GoogleFonts.montserrat(
        textStyle: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w400,
          color: Color(0xff000912),
        ),
      ),
      decoration: InputDecoration(
        hintText: "Username",
        hintStyle: TextStyle(color: Color(0xffA6B0BD)),
        fillColor: Colors.white,
        filled: true,
        prefixIcon:
            Icon(Icons.person_outline, size: 20, color: Color(0xffA6B0BD)),
        prefixIconConstraints: BoxConstraints(
          minWidth: 75,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(50),
          ),
          borderSide: BorderSide(color: Colors.white),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(50),
          ),
          borderSide: BorderSide(color: Colors.white),
        ),
      ),
    ),
  );
}

Widget _password() {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(
        Radius.circular(50),
      ),
      boxShadow: [
        new BoxShadow(
          color: Colors.grey,
          blurRadius:
              3.0, // You can set this blurRadius as per your requirement
        ),
      ],
    ),
    margin: EdgeInsets.only(top: 20),
    child: TextField(
      style: GoogleFonts.montserrat(
        textStyle: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w400,
          color: Color(0xff000912),
        ),
      ),
      decoration: InputDecoration(
        hintText: "Password",
        hintStyle: TextStyle(color: Color(0xffA6B0BD)),
        fillColor: Colors.white,
        filled: true,
        prefixIcon:
            Icon(Icons.lock_outline, size: 20, color: Color(0xffA6B0BD)),
        prefixIconConstraints: BoxConstraints(
          minWidth: 75,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(50),
          ),
          borderSide: BorderSide(color: Colors.white),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(50),
          ),
          borderSide: BorderSide(color: Colors.white),
        ),
      ),
    ),
  );
}

Widget _loginbutton() {
  return Container(
    width: double.infinity,
    margin: EdgeInsets.only(top: 30, bottom: 60),
    decoration: BoxDecoration(
      gradient: LinearGradient(colors: [Color(0xff8459f9), Color(0xff502BDF)]),
      borderRadius: BorderRadius.all(Radius.circular(50)),
    ),
    child: FlatButton(
      onPressed: () => {print('Login is pressed.')},
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Text(
        "Login",
        style: GoogleFonts.montserrat(
          textStyle: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ),
    ),
  );
}

Widget _signup() {
  return Container(
    margin: EdgeInsets.only(top: 10),
    child: Text("Sign Up",
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 20,
        )),
  );
}
