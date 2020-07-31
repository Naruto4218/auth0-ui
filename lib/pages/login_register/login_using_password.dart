import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginUsingPassword extends StatefulWidget {
  @override
  _LoginUsingPasswordState createState() => _LoginUsingPasswordState();
}

class _LoginUsingPasswordState extends State<LoginUsingPassword> {
  bool _passwordVisible = false;
  TextEditingController _userPasswordController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Enter Password',
          style: TextStyle(
            fontFamily: 'Roboto',
          ),
        ),
        backgroundColor: Colors.teal[400],
      ),
      body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 10.0),
                child: TextFormField(
                  obscureText: !_passwordVisible,
                  keyboardType: TextInputType.text,
                  controller: _userPasswordController,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    hintText: 'Enter you password',
                    suffixIcon: IconButton(
                      icon: Icon(
                        _passwordVisible
                            ? Icons.visibility
                            : Icons.visibility_off,
                      ),
                      onPressed: () {
                        setState(() {
                          _passwordVisible = !_passwordVisible;
                        });
                      },
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                child: new RaisedButton(
                  onPressed: () {},
                  color: Colors.teal[600],
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                    child: Text('Login',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontFamily: 'Roboto',
                          letterSpacing: 4,
                        )),
                  ),
                ),
              ),
              Container(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                  child: new FlatButton(
                      onPressed: () {
                        goToForgotPasswordScreen();
                      },
                      child: Text(
                        'Forgot Password ',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 15,
                          fontWeight: FontWeight.w200,
                          letterSpacing: 4,
                          color: Colors.teal[300],
                        ),
                      )))
            ],
          )),
    );
  }
  void goToForgotPasswordScreen(){
    Map <String,String> m = {"name": "shubham"};
    Navigator.pushNamed(context,'/forgot-password',arguments: m);
    return;
  }

}
