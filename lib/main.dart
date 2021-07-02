

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main()
{
  runApp(App());
}
class App extends StatelessWidget {
  TextEditingController pname=TextEditingController();
  TextEditingController email=TextEditingController();
  TextEditingController mob=TextEditingController();
  TextEditingController dctr=TextEditingController();
  TextEditingController sym=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("COVID APP"),
        ),
        body:
        SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(20),
            child: Column(
              children: [
                SizedBox(height: 10,),
                TextField(
                  controller: pname,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.account_circle,color: Colors.red,size: 40,),
                    prefix: CircularProgressIndicator(),
                    labelText: "Patient name",
                    hintText: "Patient name",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    )
                  ),
                ),
                SizedBox(height: 10,),
                TextField(
                  controller: email,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email,color: Colors.deepOrange,size: 40,),
                    prefix: CircularProgressIndicator(),
                    labelText: "Email id",
                    hintText: "Email id:",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    )
                  ),
                ),
                SizedBox(height: 10,),
                TextField(
                  controller: mob,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.add_call,color: Colors.lime,size: 40,),
                    prefix: CircularProgressIndicator(),
                    labelText: "Mobile no:",
                    hintText: "Mobile no:",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    )
                  ),
                ),
                SizedBox(height: 10,),
                TextField(
                  controller: dctr,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.account_circle,color: Colors.teal,size: 40,),
                    prefix: CircularProgressIndicator(),
                    labelText: "Doctor",
                    hintText: "Doctor",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    )
                  ),
                ),
                SizedBox(height: 10,),
                TextField(
                  maxLines: 2,
                  controller: sym,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.arrow_forward,color: Colors.greenAccent,size: 40,),
                    prefix: CircularProgressIndicator(),
                    labelText: "Symptoms",
                    hintText: "Symptoms",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    )
                  ),
                ),
                SizedBox(height: 10,),
                SizedBox(
                  height: 60,
                  width: double.infinity,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    color: Colors.purpleAccent,
                    onPressed: (){
                      var getPatientname=pname.text;
                      var getEmailid=email.text;
                      var getMobileno=int.parse(mob.text);
                      var getDoctor=dctr.text;
                      var getSymptoms=sym.text;
                      print(getPatientname);
                      print(getEmailid);
                      print(getMobileno);
                      print(getDoctor);
                      print(getSymptoms);

                    },
                    child: Text("SUBMIT",
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
        ),
      ),
    );
  }
}
