import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  State <MyApp> createState() => _MyAppState();
}
  // This widget is the root of your application.
  @override
  class _MyAppState extends State<MyApp>{
  int i=0;
  int j=0;
@override
    Widget build(BuildContext context) {
    return MaterialApp(
    home: Scaffold(
    appBar: AppBar(
      backgroundColor:Colors.purple,
      title: const Text("counter"),),
      body: Container(
        padding: EdgeInsets.all(20),
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
             // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //Icon(Icons.star),
                Text('Team A',style: TextStyle(fontSize: 40,color: Colors.purple[300]),),
                Text("$i",style: TextStyle(fontSize:50 ),),
                MaterialButton(
                    color: Colors.purple,
                    onPressed: (){
                      setState(() {
                        i=i+1;
                      });
                },child: Text("Add 1 point",style: TextStyle(color: Colors.white),),),
                SizedBox(width: 10,height: 10,),
                MaterialButton(
                  color: Colors.purple,
                  onPressed: (){
                    setState(() {
                      i=i+2;
                    });
                  },child: Text("Add 2 point",style: TextStyle(color: Colors.white),),),
                SizedBox(width: 10,height: 10,),
                MaterialButton(
                  color: Colors.purple,
                  onPressed: (){
                    setState(() {
                      i=i+3;
                    });
                  },child: Text("Add 3 point",style: TextStyle(color: Colors.white),),),
              ],
            ),
            Column(
              children: [
                Padding(padding:EdgeInsets.only(bottom: 430)),
                Align(
                  alignment: Alignment.center,
                  child: MaterialButton(
                    color: Colors.purple,
                    onPressed: () {
                      setState(() {
                        i = 0;
                        j=0;
                      });
                    },child: const Text("Reset",style: TextStyle(color: Colors.white),textAlign: TextAlign.center,),
                  ),
                ),
              ],
            ),
            Column(
             // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //Icon(Icons.star),
                Text('Team B',style: TextStyle(fontSize: 40,color: Colors.purple[400])),
                Text("$j",style: TextStyle(fontSize:50 ),),
                MaterialButton(
                  color: Colors.purple,
                  onPressed: (){
                    setState(() {
                      j=j+1;
                    });
                  },child: Text("Add 1 point",style: TextStyle(color: Colors.white),),),
                SizedBox(width: 10,height: 10,),
                MaterialButton(
                  color: Colors.purple,
                  onPressed: (){
                    setState(() {
                      j=j+2;
                    });
                  },child: Text("Add 2 point",style: TextStyle(color: Colors.white),),),
                SizedBox(width: 10,height: 10,),
                MaterialButton(
                  color: Colors.purple,
                  onPressed: (){
                    setState(() {
                      j=j+3;
                    });
                  },child: Text("Add 3 point",style: TextStyle(color: Colors.white),),),
              ],
            ),


          ],
        ),
      ),
    ),


    );
  }


}