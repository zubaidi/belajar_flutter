import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class LoginUI extends StatefulWidget {
  LoginWidget createState() => LoginWidget();
}

class LoginWidget extends State<LoginUI> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 1.5,
              child: Container(
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(0, 119, 182, 1.0),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(100.0),
                          bottomRight: Radius.circular(100.0))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 80),
                        child:
                            Image.asset('assets/images/logo.png', height: 80.0),
                      )
                    ],
                  ))),
          Positioned(
            top: 220,
            child: Container(
              height: MediaQuery.of(context).size.height / 1.8,
              width: MediaQuery.of(context).size.width - 40,
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Color.fromRGBO(2, 62, 138, 1.0),
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 10, left: 10),
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Login Form',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.white),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 10, left: 10, top: 10),
                    child: TextField(
                        style: TextStyle(color: Colors.white, fontSize: 12),
                        decoration: InputDecoration(
                            suffixIcon: Icon(
                              Icons.email,
                              color: Colors.white,
                            ),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white)),
                            labelText: 'Email',
                            labelStyle:
                                TextStyle(fontSize: 12, color: Colors.white))),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 10, left: 10),
                    child: TextField(
                        style: TextStyle(color: Colors.white, fontSize: 12),
                        obscureText: true,
                        decoration: InputDecoration(
                            suffixIcon: Icon(
                              Icons.lock,
                              color: Colors.white,
                            ),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white)),
                            labelText: 'Password',
                            labelStyle:
                                TextStyle(fontSize: 12, color: Colors.white))),
                  ),
                  /*
                  Container(
                    margin: EdgeInsets.only(top: 2),
                    child: Row(children: [
                      Container(
                        child: Checkbox(
                          value: true,
                          onChanged: (value) {},
                          focusColor: Colors.white,
                        ),
                      ),
                      Text('Remember Me',
                          style: TextStyle(fontSize: 14, color: Colors.white))
                    ]),
                  ),
                  */
                  Container(
                    margin: EdgeInsets.only(right: 10, left: 10, top: 5),
                    child: ButtonTheme(
                      minWidth: double.infinity,
                      child: RaisedButton(
                          color: Colors.blue[800],
                          child: Text(
                            'LOGIN',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          onPressed: () {}),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 10, left: 10, top: 2),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(right: 10),
                            child: Divider(height: 45, color: Colors.white),
                          ),
                        ),
                        Text('OR',
                            style:
                                TextStyle(color: Colors.white, fontSize: 12)),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Divider(height: 45, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 10, left: 10),
                    child: ButtonTheme(
                      minWidth: double.infinity,
                      child: RaisedButton.icon(
                          color: Colors.blue[800],
                          label: Text(
                            'Using Phone Number',
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                          icon: Icon(
                            Icons.phone_android,
                            color: Colors.white,
                          ),
                          onPressed: () {}),
                    ),
                  ),
                ],
              ),
            ),
          ),
          /*
          Positioned(
            bottom: 20,
            child: Container(
              width: MediaQuery.of(context).size.width,
              alignment: Alignment.center,
              child: Text(
                'Design By Zubaidi',
                style: TextStyle(
                    color: Color.fromRGBO(43, 45, 66, 1.0),
                    fontSize: 12,
                    fontWeight: FontWeight.bold),
              ),
            ),
          )*/
        ],
      ),
    );
  }
}
