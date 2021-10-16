import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:myfirstproject/myapplication.dart';


class EditPage extends StatefulWidget {
  const EditPage({Key key}) : super(key: key);

  @override
  _EditPageState createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Edit Page",
          style: TextStyle(
           fontSize: 20,
           fontWeight: FontWeight.w700,
           fontStyle: FontStyle.italic,
           color: Colors.white,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.person,
            color: Colors.white,
          ),
          iconSize: 20,
          onPressed: (){
            Navigator.pop(context);
          },
        ),
        actions: [
          InkWell(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context)=>ProfilePage(),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.only(
                bottom: 10,
                top: 10,
                left: 20,
                right: 5,
              ),
              child: Container(
                height: 25,
                width: 105,
                padding: EdgeInsets.only(
                  left: 15,
                  right: 15,
                  bottom: 10,
                  top: 10,
                ),
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.grey.shade700,
                      width: 3,
                      style: BorderStyle.solid,
                  ),
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey.shade700,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("save"),
                    Icon(Icons.save_rounded,
                      color: Colors.black,
                    size: 15,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
