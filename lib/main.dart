import 'package:flutter/material.dart';
import 'package:flutter_my_timeline/pages/new_post_page.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Timeline',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyTimelinePage(title: 'Timeline'),
    );
  }
}

class MyTimelinePage extends StatefulWidget {
  MyTimelinePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyTimelinePageState createState() => _MyTimelinePageState();
}

class _MyTimelinePageState extends State<MyTimelinePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return NewPostPage();
                  },
                ),
              );
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: 1,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '10 min ago',
                      style: TextStyle(color: Colors.grey[500]),
                    ),
                    SizedBox(height: 10),
                    Text('Hello, My name is Jeff.I support Manchester United Football Club',
                    style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
                child: Container(
                  decoration: BoxDecoration(color: Colors.grey[300]),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
