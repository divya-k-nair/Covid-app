import 'package:covid_app/login.dart';
import 'package:covid_app/register.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin:EdgeInsets.all(20) ,
          child: Column(
            children: [
              SizedBox(height: 20,),
              SizedBox(
                height: 60,
                width: double.infinity,
                child: RaisedButton(
                  color: Colors.pinkAccent,
                  onPressed:(){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));

                },
                  child: Text("LOGIN",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                    ),
                ),
              ),
              ),
              SizedBox(height: 20,),
              SizedBox(
                height: 60,
                width: double.infinity,
                child: RaisedButton(
                  color: Colors.pinkAccent,
                  onPressed:(){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Register()));

                  },
                  child: Text("REGISTER",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
            ],//children
          ),
      ),
    );
  }
}
