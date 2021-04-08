import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pet_care/authentication/registeration.dart';

class Sign_In extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF2e2b43),
          elevation: 0,
        ),
        body: Stack(
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
                    style: TextStyle(color: Colors.white, fontSize: 30),
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
                  height: MediaQuery.of(context).size.height * 0.40,
                  child: ListView(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: TextField(
                          decoration: InputDecoration(
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
                              labelStyle: TextStyle(color: Colors.black26),
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
                        child: TextField(
                          decoration: InputDecoration(
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
                              labelStyle: TextStyle(color: Colors.black26),
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
                          onPressed: () {},
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                'Sign In',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 17),
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * .55,
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * .25,
                  child: Column(
                    children: [
                      Text(
                        'or continue with',
                        style: TextStyle(color: Colors.black54),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * .03,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FaIcon(
                            FontAwesomeIcons.facebook,
                            color: Color(0xFF4267B2),
                            size: 50,
                          ),
                          SizedBox(width: 50),
                          FaIcon(
                            FontAwesomeIcons.google,
                            color: Color(0xFFc25e3c),
                            size: 50,
                          )
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * .08,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Don't have account yet ? ",
                            style: TextStyle(color: Colors.black54),
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
                                  color: Color(0xFFc25e3c),
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
        ));
  }
}
