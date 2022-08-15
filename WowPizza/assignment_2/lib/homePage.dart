import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'main.dart';


void main() {
  runApp(homePage());
}

class homePage extends StatefulWidget {

  const homePage({Key? key}) : super(key: key);

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {

  late WebViewController controller;
  var _index = 0;


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Text("WoW Pizza!", style: TextStyle(color: Colors.white),),
        ),

        drawer: Drawer(

          width: 250,
          backgroundColor: Colors.white,
          child: ListView(
            children:<Widget> [

              DrawerHeader(

                decoration: BoxDecoration(color: Colors.black26,border: Border.all(color: Colors.black38),),
                child: Text("Wow Pizza List",
                  style: TextStyle(color: Colors.deepOrange),
                  textAlign: TextAlign.center,textScaleFactor: 2),
                padding: EdgeInsets.fromLTRB(0, 65, 0, 0),
              ),

              ListTile(

                onTap: () {
                  Navigator.pushNamed(context, '1');
                },
                contentPadding: EdgeInsets.fromLTRB(10, 20, 20, 20),
                leading:Image(image:NetworkImage("https://www.pngitem.com/pimgs/m/248-2486809_transparent-vegetable-pizza-png-png-download.png"),
                  width: 70,),
                title: Text("Veggi Pizza", style: TextStyle(color: Colors.amber),),
                trailing: Icon(Icons.arrow_forward_ios),

              ),
              ListTile(
                onTap: () {
                  Navigator.pushNamed(context, '4');
                },

                contentPadding: EdgeInsets.all(20),

                leading:Image(image:NetworkImage("https://www.seekpng.com/png/full/148-1483373_cheese-pizza-cheese-pizza-top-view-png.png",),
                  width: 50,),
                title: Text("   Cheesi Pizza", style: TextStyle(color: Colors.amber),),
                trailing: Icon(Icons.arrow_forward_ios,),
              ),
              ListTile(
                onTap: () {
                  Navigator.pushNamed(context, '5');
                },
                contentPadding: EdgeInsets.fromLTRB(15, 20, 20, 20),
                leading:Image(image:NetworkImage("https://www.pngall.com/wp-content/uploads/4/French-Fries-PNG-File.png"),
                  width: 70,),
                title: Text("Frenchi Fries", style: TextStyle(color: Colors.amber),),
                trailing: Icon(Icons.arrow_forward_ios),
              ),

            ],

          ),
        ),



        body:

        Column(
          children: <Widget>[
            Container(
                child: Image(image:
                NetworkImage("https://img.freepik.com/premium-photo/heart-shaped-pizza-served-wooden-table-closeup_392895-67996.jpg?w=740"),),
                padding: EdgeInsets.fromLTRB(10,50, 10, 0)
            ),
            Container(

              child: Text("\nHi, I'm the Pizza Assistant, what can i help you order?",
                  style: TextStyle(fontSize: 28),textAlign: TextAlign.center),

            ),
            Container(
              padding: EdgeInsets.all(40),
              child:ElevatedButton(onPressed: (){Navigator.pushNamed(context, '1');},
                  child: Text("Menu",textScaleFactor: 1.3),style:ElevatedButton.styleFrom(primary: Colors.deepOrange),),
              width: 220,

            )

          ],

        ),




        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(label: "Home",icon: Icon(Icons.home),),
              BottomNavigationBarItem(label: "Facebook", icon: Icon(Icons.facebook),),
              BottomNavigationBarItem(label: "Instagram", icon: Icon(Icons.camera_alt_outlined),),
            ],


            currentIndex: _index,
            unselectedItemColor: Colors.black,
            selectedItemColor: Colors.white,
            backgroundColor: Colors.amber,

            onTap: (index) {



              setState(() {

                _index = index;
                if (_index == 0) Navigator.pushNamed(context, '0');
                if (_index == 1) Navigator.pushNamed(context, '2');
                if (_index == 2) Navigator.pushNamed(context, '3');


              });

            }
        ),
      ),
    );
  }
}
