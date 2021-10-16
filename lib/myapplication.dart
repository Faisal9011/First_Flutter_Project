import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:myfirstproject/editpage.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
          Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
          iconSize: 25,
        ),
        actions: [
          Container(
            height: 25,
            width: 105,
            padding: EdgeInsets.only(
              left: 15,
              right: 15,
              bottom: 15,
              top: 15,
            ),
            child: RaisedButton(
              onPressed: (){
               Navigator.push(
                   context,
                   MaterialPageRoute(
                       builder: (context)=>EditPage(),
                ),
               );
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              color: Colors.lime.shade500,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Edit",
                    style: TextStyle(
                      fontSize:15,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ),
                  Icon(
                    Icons.create_rounded,
                    size:15,
                    color: Colors.black,
                  ),
                ],
              ),
            ),

          ),
        ],
        title: Text(
          "Profile Page",
          style: TextStyle(
            fontStyle: FontStyle.italic,
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      extendBodyBehindAppBar: true,
      body: Align(
        alignment: Alignment.center,
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [

              //Profile image, name, address container


            ],
          ),
        ),
      ),
    );
  }
}
