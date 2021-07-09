import 'package:covid_app/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Login extends StatelessWidget {
  TextEditingController pname=TextEditingController();
  TextEditingController eid=TextEditingController();
  TextEditingController mob=TextEditingController();
  TextEditingController doc=TextEditingController();
  TextEditingController sym=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.lime,
        appBar: AppBar(
          title: Text("LOGIN"),
        ),
        body:SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(20),
            child: Column(
              children: [
                SizedBox(height: 20,),
                TextField(
                  controller: pname,
                  decoration: InputDecoration(
                    prefix: CircularProgressIndicator(),
                    prefixIcon: Icon(Icons.account_circle,color: Colors.deepOrange,size: 40,),
                    hintText: "Patient name",
                    labelText: "Patient name",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                TextField(
                  controller: eid,
                  decoration: InputDecoration(
                    hintText: "Email id:",
                    labelText: "Email id:",
                    prefix: CircularProgressIndicator(),
                    prefixIcon: Icon(Icons.email,color: Colors.purpleAccent,size: 40,),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                TextField(
                  controller: mob,
                  decoration: InputDecoration(
                    prefix: CircularProgressIndicator(),
                    prefixIcon: Icon(Icons.add_call,color: Colors.indigo,size: 40,),
                    hintText: "Mobile no:",
                    labelText: "Mobile no:",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                TextField(
                  controller: doc,
                  decoration:InputDecoration(
                    prefix:CircularProgressIndicator(),
                    prefixIcon: Icon(Icons.account_circle_sharp,color: Colors.lightBlueAccent,size: 40,),
                    hintText: "Doctor",
                    labelText: "Doctor",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ) ,
                ),
                SizedBox(height: 20,),
                TextField(
                  controller: sym,
                  decoration: InputDecoration(
                    hintText: "Symptoms",
                    labelText: "Symptoms",
                    prefix: CircularProgressIndicator(),
                    prefixIcon: Icon(Icons.arrow_forward_ios,color: Colors.purpleAccent,size: 40,),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                SizedBox(height: 20,),
                SizedBox(
                  height: 60,
                  width: double.infinity,
                  child: RaisedButton(
                    color: Colors.pinkAccent,
                    onPressed: (){
                      var getPatientname=pname.text;
                      var getEmailid=eid.text;
                      var getMobile=mob.text;
                      var getDoctor=doc.text;
                      var getSymptoms=sym.text;
                      print(getPatientname);
                      print(getEmailid);
                      print(getMobile);
                      print(getDoctor);
                      print(getSymptoms);



                    },
                    child: Text("SUBMIT",
                      style: TextStyle(
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
                      color: Colors.green,
                      onPressed:(){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>App()));

                      },
                      child: Text("BACK TO HOME",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                        ),
                      ),
                    )
                ),
              ],//children
            ),
          ),
        )
      ),

    );


  }
}
