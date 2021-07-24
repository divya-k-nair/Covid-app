import 'package:flutter/material.dart';

class Covidlist extends StatefulWidget {

  @override
  _CovidlistState createState() => _CovidlistState();
}

class _CovidlistState extends State<Covidlist> {
  TextEditingController name=TextEditingController();
  TextEditingController aadh=TextEditingController();
  TextEditingController mob=TextEditingController();
  List cname=[];
  List caadh=[];
  List cmob=[];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.tealAccent,
        appBar: AppBar(
          title: Text("COVID PATIENT LIST"),
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(20),
            child: Column(
              children: [
                SizedBox(height: 10,),
                TextField(
                  controller: name,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.account_box,color: Colors.deepOrangeAccent,size: 25,),
                    labelText: "Name",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                TextField(
                  obscureText: true,
                  controller: aadh,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.visibility_off,color: Colors.deepOrangeAccent,size: 25,),
                    labelText: "Aadhaar no:",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                TextField(
                  controller: mob,
                  decoration: InputDecoration(
                    labelText: "Mobileno:",
                    prefixIcon: Icon(Icons.add_call,color: Colors.deepOrangeAccent,size: 25,),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    )
                  ),
                ),
                SizedBox(height: 10,),
                SizedBox(
                  height: 40,
                  width: double.infinity,
                  child: RaisedButton(
                    color: Colors.indigoAccent,
                    onPressed:(){
                      var getName=name.text;
                      var getAadhar=aadh.text;
                      var getMob=mob.text;
                      print(getName);
                      print(getAadhar);
                      print(getMob);
                      setState(() {
                        cname.add(getName);
                        caadh.add(getAadhar);
                        cmob.add(getMob);
                      });


                  },
                    child: Text("SUBMIT",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                      ),
                  ),
                ),
                ),
                ListView.builder(
                  itemCount: cname.length==null?0:cname.length,
                  shrinkWrap: true,
                    itemBuilder:(context, index) {
                      return Card(

                        child: ListTile(
                          leading: Icon(Icons.account_circle,color: Colors.green,size: 25,),
                          trailing: GestureDetector(
                            onTap: (){
                              print("Delete clicked"+index.toString());
                              setState(() {
                                cname.removeAt(index);
                                caadh.removeAt(index);
                                cmob.removeAt(index);
                              });
                            },
                              child: Icon(Icons.delete,color: Colors.green,size: 25,)),
                          title: Text(cname[index]),
                          subtitle: Text("Aadharno:"+caadh[index]+"\n"+"Mobileno:"+cmob[index]),
                        ),
                      );
                    },)
              ],//children
            ),
          ),
        ),
      ),
    );
  }
}
