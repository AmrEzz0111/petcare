import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pet_care/authentication/registeration.dart';
import 'package:pet_care/authentication/authentication-provider.dart';
import 'package:pet_care/colors/style.dart';
import 'package:pet_care/models/user_model.dart';
import 'package:pet_care/profile/profile_view.dart';
import 'package:pet_care/screens/home_screen.dart';
import 'package:provider/provider.dart';

class SignIn extends StatefulWidget {
  final myController = TextEditingController();
  final FirebaseAuth auth = FirebaseAuth.instance;
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  String email = "";
  String password = "";
  TextEditingController myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF2e2b43),
        elevation: 0,
      ),
      body: ChangeNotifierProvider(
        create: (context) => AuthenticationProvider(),
        child: Consumer<AuthenticationProvider>(
          builder: (context, signInProv, _) => Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Positioned(
                top: 0,
                child: Container(
                  color: Color(0xFF2e2b43),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * .20,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
                    child: Text(
                      'Sign In',
                      style: TextStyle(
                          color: Colors.white, fontSize: 30, fontFamily: 'Co'),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * .08,
                left: 15,
                right: 15,
                child: Card(
                  elevation: 8,
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.48,
                    child: ListView(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            controller: myController,
                            onChanged: (value) {
                              email = value;
                            },
                            cursorColor: Colors.red,
                            style: TextStyle(
                                color: Colors.black, fontFamily: 'Co'),
                            decoration: InputDecoration(
                              errorText: (signInProv.wrongEmail &&
                                      signInProv.signInClicked)
                                  ? "This Email is not exist !"
                                  : "",
                              suffixIcon: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: FaIcon(
                                  FontAwesomeIcons.solidCircle,
                                  size: 15,
                                  color: Colors.green,
                                ),
                              ),
                              hintText: 'enter your email',
                              labelText: 'Email',
                              labelStyle: TextStyle(
                                  color: Colors.black26, fontFamily: 'Co'),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFc25e3c),
                                ),
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFc25e3c),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: TextFormField(
                            obscureText: true,
                            onChanged: (value) {
                              password = value;
                            },
                            style: TextStyle(
                                color: Colors.black, fontFamily: 'Co'),
                            decoration: InputDecoration(
                                errorText: (signInProv.wrongPassword &&
                                        signInProv.signInClicked)
                                    ? "Password is incorrect!"
                                    : "",
                                suffixIcon: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: FaIcon(
                                    FontAwesomeIcons.solidCircle,
                                    size: 15,
                                    color: Colors.green,
                                  ),
                                ),
                                hintText: 'enter your Password',
                                labelText: 'Password',
                                labelStyle: TextStyle(
                                    color: Colors.black26, fontFamily: 'Co'),
                                focusedBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xFFc25e3c))),
                                enabledBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xFFc25e3c)))),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: RaisedButton(
                            color: Color(0xFFc25e3c),
                            onPressed: () async {
                              await signInProv.signIn(email.trim(), password);
                              if (signInProv.user.runtimeType == UserModel) {
                                Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                    builder: (context) => ProfileView(
                                      user: signInProv.user,
                                    ),
                                  ),
                                );
                              }
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)),
                            child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text(
                                  'Sign In',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontFamily: 'Co'),
                                )),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * .6,
                child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * .25,
                    child: Column(
                      children: [
                        Text(
                          'or continue with',
                          style: TextStyle(
                              color: Colors.black54, fontFamily: 'Co'),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * .05,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FaIcon(
                              FontAwesomeIcons.facebook,
                              color: Color(0xFF4267B2),
                              size: 35,
                            ),
                            SizedBox(width: 50),
                            FaIcon(
                              FontAwesomeIcons.google,
                              color: AppTheme.appDark,
                              size: 35,
                            )
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * .05,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Don't have account yet ? ",
                              style: TextStyle(
                                  color: Colors.black54, fontFamily: 'Co'),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Registeraion()));
                              },
                              child: Text(
                                "Registeration",
                                style: TextStyle(
                                    color: AppTheme.appDark,
                                    fontFamily: 'Co',
                                    fontWeight: FontWeight.bold,
                                    decoration: TextDecoration.underline),
                              ),
                            )
                          ],
                        )
                      ],
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
