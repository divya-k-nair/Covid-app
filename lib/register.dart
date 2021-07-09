import 'package:covid_app/home.dart';
import 'package:covid_app/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Register extends StatelessWidget {
TextEditingController adh=TextEditingController();
TextEditingController mob=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.lightGreenAccent,
        appBar: AppBar(
          title: Text("REGISTER"),
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(20),

            child: Column(
              children: [
                SizedBox(height: 20,),
                TextField(
                  controller: adh,
                  decoration: InputDecoration(
                    prefix: CircularProgressIndicator(),
                    prefixIcon: Icon(Icons.arrow_forward,color: Colors.redAccent,size: 40,),
                    hintText: "Aadhar no:",
                    labelText: "Aadhar no:",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                TextField(
                  controller: mob,
                  decoration: InputDecoration(
                    hintText: "Mobile no:",
                    labelText: "Mobile no:",
                    prefix: CircularProgressIndicator(),
                    prefixIcon: Icon(Icons.add_call,color: Colors.redAccent,size: 40,),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                SizedBox(
                  height: 60,
                  width: double.infinity,
                  child: RaisedButton(
                    color: Colors.green,
                    onPressed: (){
                      var getAdhar=adh.text;
                      var getMob=mob.text;
                      print(getAdhar);
                      print(getMob);

                    },
                    child: Text("REGISTER",
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
                    color: Colors.green,
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>App()));

                    },
                    child: Text("BACK TO HOME",
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
        )
        
      ),
    );
  }
}
