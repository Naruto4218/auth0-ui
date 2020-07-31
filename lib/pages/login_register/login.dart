import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final formKey = GlobalKey<FormState>();
  String mobileNo;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: <Color>[
                Colors.teal[600],
                Colors.green[200],
              ])),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              SizedBox(height: 20,),
              Expanded(
                  child: Container(
                    margin: EdgeInsets.fromLTRB(40,10,40,10),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/app_logo.jpg')
                      )
                    ),
              )),
              SizedBox(height: 20,),
              Expanded(
                child: Container(
                  child: Column(children: <Widget>[
                    Text(
                      'COVID-19',
                      style: TextStyle(
                          fontSize: 40,
                          letterSpacing: 3,
                          fontFamily: 'Roboto',
                          color: Colors.red),
                    ),
                    Text(
                      'Jobs',
                      style: TextStyle(
                          fontSize: 40, letterSpacing: 3, fontFamily: 'Roboto'),
                    ),
                  ]),
                ),
              ),
              Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(30.0),
                      ),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey[200],
                            offset: Offset.zero,
                            blurRadius: 1.0,
                            spreadRadius: 3.0),
                      ]),
                  margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: Column(
                    children: <Widget>[
                      Form(
                          key: formKey,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.fromLTRB(10, 30, 20, 10),
                                child: new TextField(
                                  decoration: InputDecoration(
                                      prefixIcon: Icon(Icons.phone),
                                      labelText: 'mobile no',
                                      labelStyle: TextStyle(
                                        fontWeight: FontWeight.w100,
                                        fontSize: 17,
                                      ),
                                      border: new OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(1),
                                        borderSide: BorderSide(),
                                      )),
                                  keyboardType: TextInputType.number,
                                ),
                              ),
                              Padding(
                                  padding: EdgeInsets.fromLTRB(10, 20, 20, 10),
                                  child: RaisedButton(
                                      onPressed: () {
                                        verifyOtp();
                                      },
                                      color: Colors.teal,
                                      child: Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(1, 1, 1, 1),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: <Widget>[
                                              Text(
                                                'Continue',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.normal,
                                                  fontFamily: 'Roboto',
                                                  fontSize: 20,
                                                  letterSpacing: 4,
                                                  color: Colors.white,
                                                ),
                                              ),
                                              Icon(
                                                Icons.arrow_forward,
                                                color: Colors.white,
                                              )
                                            ],
                                          ))))
                            ],
                          )),
                      Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                  child: Divider(
                                color: Colors.black,
                                height: 5,
                              )),
                              Padding(
                                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                                child: Text('OR',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w100,
                                      color: Colors.grey,
                                    )),
                              ),
                              Expanded(
                                child: Divider(
                                  color: Colors.black,
                                  height: 5,
                                ),
                              ),
                            ],
                          )),
                      Container(
                          child: FlatButton(
                              onPressed: () {},
                              color: Colors.white,
                              child: Text(
                                'Register yourself',
                                style: TextStyle(
                                  fontSize: 14,
                                  letterSpacing: 3,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w300,
                                  color: Colors.teal[600],
                                ),
                              )))
                    ],
                  )),
              SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }

  void verifyOtp(){
    Map <String,String> m = {"name": "shubham"};
    Navigator.pushNamed(context,'/verify-otp',arguments: m);
    return;
  }
}
