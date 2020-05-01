import 'package:flutter/material.dart';
import 'package:yoega/utilities/CircularImage.dart';
import 'package:yoega/widgets/DateTimeFieldCustom.dart';
import 'package:yoega/widgets/StretchedButton.dart';
import 'package:yoega/widgets/StretchedLabel.dart';
import 'package:yoega/widgets/TextFieldWidget.dart';
//import 'package:yoega/bloc/navigation_bloc/navigation_bloc.dart';
import 'package:intl/intl.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';



/// please add Image upload ///


class RegisterEventPage extends StatefulWidget{
  @override
  _RegisterEventPageState createState()=> new _RegisterEventPageState();
}
// ignore: must_be_immutable
class _RegisterEventPageState extends State<RegisterEventPage> {
  final dateFormat = DateFormat("EEEE, MMMM d, yyyy 'at' h:mma");
  final timeFormat = DateFormat("h:mm a");
  DateTime date;
  TimeOfDay time;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xfdfdfdff),
            ),
            child: Padding(
              padding: EdgeInsets.all(23),
              child: ListView(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                    child: Container(
                      color: Color(0xfdfdfdff),
                      child: Text("Register an Event", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                    child: Container(
                      color: Color(0xfdfdfdff),
                      child: TextFieldWidget("Event Title",TextInputType.text, Icon(null)),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                    child: Container(
                      color: Color(0xfdfdfdff),
                      child: TextFieldWidget("Event Descriptoin",TextInputType.text, Icon(null)),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                    child: Container(
                      color: Color(0xfdfdfdff),
                      child: TextFieldWidget("Venue",TextInputType.text, Icon(null)),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                    child: Container(
                      color: Color(0xfdfdfdff),
                      child: TextFieldWidget("Max Volunteer",TextInputType.number, Icon(null)),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                    child: Container(
                      color: Color(0xfdfdfdff),
                      child: TextFieldWidget("Max Participant",TextInputType.number, Icon(null)),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                    child: Container(
                      color: Color(0xfdfdfdff),
                      child:  Column(children: <Widget>[Text("Start Date & Time"),BasicDateTimeField(),],),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                    child: Container(
                      color: Color(0xfdfdfdff),
                      child:  Column(children: <Widget>[Text("End Date & Time"),BasicDateTimeField(),],),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: StretchedButton(label:"Register Event",color: Colors.teal,)
                  ),

                ],
              ),
            ),
          ),
      ),
    );
  }
}