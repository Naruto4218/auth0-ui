import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  bool _passwordVisible = false;
  TextEditingController _userPasswordController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: Text('Reset Password'),
        centerTitle: true,
         backgroundColor: Colors.teal[600],
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.only(top: 20),
              alignment: Alignment.center,
              child: Text("Please type verification code sent to ",
                  style: TextStyle(
                    fontSize: 15,
                    fontFamily: 'Roboto',
                    color: Colors.grey[700],
                    fontWeight: FontWeight.w300,
                  )),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
              alignment: Alignment.center,
              child: Text("8120387578",
                  style: TextStyle(
                    fontSize: 15,
                    fontFamily: 'Roboto',
                    color: Colors.red[700],
                    fontWeight: FontWeight.w500,
                  )),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 70),
              alignment: Alignment.centerLeft,
              child: TextFormField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                   border: new OutlineInputBorder(
                     borderRadius: BorderRadius.circular(0),
                     borderSide: BorderSide(),
                   ),
                  labelText: 'Please enter otp',
                  hintText: 'Please enter otp'
                ),
              )
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 70),
                child: TextFormField(
                  obscureText: !_passwordVisible,
                  keyboardType: TextInputType.text,
                  controller: _userPasswordController,
                  decoration: InputDecoration(
                    border: new OutlineInputBorder(
                      borderRadius: BorderRadius.circular(0),
                      borderSide: BorderSide(),
                    ),
                    labelText: 'New Password',
                    hintText: 'Enter your New password',
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
                )
            ),
            Container(
               padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
              child: RaisedButton(
                onPressed: (){},
                color: Colors.teal[600],
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                  child: Text(
                    'Change Password',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w200,
                      fontSize: 15,
                      fontFamily: 'Roboto',
                      letterSpacing: 4,
                    )
                  ),
                )
              )
            )
          ],
        ),
      ),
    );
  }

}
