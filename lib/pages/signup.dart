import "package:flutter/material.dart";
import 'package:yoega/pages/login.dart';
import 'package:yoega/utilities/CircularImage.dart';
import 'package:yoega/widgets/StretchedLabel.dart';
import "package:yoega/widgets/TextFieldWidget.dart";
import 'package:yoega/widgets/StretchedButton.dart';

class SignupPage extends StatefulWidget{
  @override
  _SignupPageState createState()=> new _SignupPageState();
}
class _SignupPageState extends State<SignupPage>{
  int _genderRadioValue = -1;
  String gender;


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          Center(
              child: CircularImage(AssetImage('./assets/logo.png'), width: 100)
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.only(top: 145),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white70,
            ),
            child: Padding(
              padding: EdgeInsets.all(23),
              child: ListView(
                children: <Widget>[
                  TextFieldLabel("Name"),
                  TextFieldFormNonEdit("Full Name"),

                  TextFieldLabel("Username"),
                  TextFieldFormNonEdit("Username"),
                  TextFieldLabel("Gender"),

                  new Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new Radio(
                        value: 0,
                        groupValue: _genderRadioValue,

                      ),
                      new Text(
                        'Male',
                        style: new TextStyle(fontSize: 16.0),
                      ),
                      new Radio(
                        value: 1,
                        groupValue: _genderRadioValue,
                      ),
                      new Text(
                        'Female',
                        style: new TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                      new Radio(
                        value: 2,
                        groupValue: _genderRadioValue,
                      ),
                      new Text(
                        'Others',
                        style: new TextStyle(fontSize: 16.0),
                      ),
                    ],
                  ),
                  TextFieldLabel("Email"),
                  TextFieldFormNonEdit("Enter EmailID"),

                  TextFieldLabel("Mobile"),
                  TextFieldFormNonEdit("Enter Mobile Number"),

                  TextFieldLabel("Password"),
                  TextFieldFormNonEdit("Enter Password", obs: true),

                  TextFieldLabel("Confirm Password"),
                  TextFieldFormNonEdit("Confirm Password", obs: true),

                  Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: StretchedButton(label:"Sign up",)
                  ),

                  Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Center(
                      child: StretchedLabel(label: "Already have an account? Login.",color: Colors.tealAccent,onPressed: (){Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> LoginPage()));},)
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

}