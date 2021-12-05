import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  //In stless widget, this build get called whenever we create a new version of this widget
  //i.e it enables hot reload fo eg if we change below backgroundColor: Colors.teal to Colors.red
  //build will check what is the most recent code got changed recently
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
            child: Column(
              mainAxisAlignment:MainAxisAlignment.center,
              children: [
          CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage('images/tapas.jpeg'),
          ),
          Text(
            'Tapas Dash',
            style: TextStyle(
                fontFamily: 'Pacifico', fontSize: 40, color: Colors.white),
          ),
          Text(
            'FLUTTER DEVELOPER',
            style: TextStyle(
                fontFamily: 'Source Sans Pro',
                fontSize: 20,
                letterSpacing: 2.5,
                fontWeight: FontWeight.bold,
                color: Colors.teal.shade100),
          ),
         Divider(
           color:Colors.teal.shade100,
           height: 20,
           indent:150,
           endIndent: 150,
         ),
          Card(
            // color: Colors.white,
            margin: EdgeInsets.symmetric(vertical: 20,horizontal: 25),
            // padding: EdgeInsets.all(10), as Card Widget does not have any padding class
            //  // no need to wrap it around padding as ListTile give some deafault padding to it
              child: ListTile(
                leading: Icon(
                  Icons.phone,color:Colors.teal),
                title: Text(
                  '+91 9815002866',style: TextStyle(color:Colors.teal.shade900,fontFamily: 'Source Sans Pro', fontSize: 20.0)),
              )
            

          ),
           Card(
            // color: Colors.white,
            margin: EdgeInsets.symmetric(vertical: 20,horizontal: 25),
            // padding: EdgeInsets.all(10), as Card Widget does not have any padding class
            // no need to wrap it around padding as ListTile give some deafault padding to it
              child: ListTile(
                leading: Icon(
                  Icons.email,color:Colors.teal),
                title: Text(
                  'tapasdash017@gmail.com',style: TextStyle(color:Colors.teal.shade900,fontFamily: 'Source Sans Pro', fontSize: 20.0)),
              
            ),
            
// Row(children: [
//                 Icon(
//                   Icons.email,color:Colors.teal),
//                 SizedBox(
//                   width: 10,
//                 ),
//                 Text(
//                   'tapasdash017@gmail.com',style: TextStyle(color:Colors.teal.shade900,fontFamily: 'Source Sans Pro', fontSize: 20.0))
                  
//               ],),

          )
        ])),
      ),
    );
  }
}

// Container(
// color: Colors.white, //its making the app all white bcoz
// //Containers with no children try to be as big as possible
// child: Text('Container 1'),
// height: 100,
// width: 100,
// // margin: EdgeInsets.all(20),//margin 20px from all sides
// //                 margin: EdgeInsets.symmetric(vertical: 70,horizontal: 50),
// ),
// Container(height: 100,width: 100,color: Colors.blue,child: Text('Container 2')),
// Container(height: 100,width: 100,color: Colors.red,child: Text('Container 3'))
// ],
