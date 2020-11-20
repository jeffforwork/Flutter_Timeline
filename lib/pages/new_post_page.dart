import 'package:flutter/material.dart';

class NewPostPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Post'),
        actions: [
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: IconButton(
              icon: Icon(Icons.done),
              onPressed: (){
                Navigator.pop(context);
              },
            ),
          ),
        ],
      ),
      body: Form(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: TextFormField(
                autofocus: true,
                maxLines: 5,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "What's on your mind",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
