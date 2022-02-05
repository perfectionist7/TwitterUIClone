import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        body: ListView(
      physics:
          const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
      children: [coverImage(), profile(), tabsContainer(size)],
    ));
  }
}

Widget coverImage() {
  return Container(
    height: 160,
    decoration: BoxDecoration(
      color: Colors.blue,
      image: DecorationImage(
        fit: BoxFit.cover,
        image: NetworkImage('https://dronaid.in/img/dronaid01.jpg'),
      ),
    ),
  );
}

Widget profile() {
  return Container(
    transform: Matrix4.translationValues(0.0, -40.0, 0.0),
    padding: EdgeInsets.symmetric(horizontal: 15),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            CircleAvatar(
              backgroundColor: Colors.teal,
              radius: 47,
              child: CircleAvatar(
                radius: 45,
                backgroundImage: AssetImage('images/myimage.jpg'),
              ),
            ),
            Text(
              "Change Profile Info",
              style: TextStyle(color: Colors.blue),
            ),
          ],
        ),
        SizedBox(height: 10),
        Text(
          "Ayush Khandelwal",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Text(
          "Project Dronaid TaskPhase | App Developer | Web Developer",
          style: TextStyle(fontSize: 13),
        ),
        SizedBox(height: 10),
        Row(
          children: [
            Icon(Icons.email, size: 15),
            Text(" akhandelwal2003@gmail.com")
          ],
        ),
        SizedBox(height: 20),
        Row(
          children: [
            Row(
              children: [
                Text(
                  '289 ',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
                Text(
                  'Following',
                  style: TextStyle(fontSize: 15, letterSpacing: 1),
                ),
              ],
            ),
            SizedBox(width: 20),
            Row(
              children: [
                Text(
                  '389 ',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
                Text(
                  'Followers',
                  style: TextStyle(fontSize: 15, letterSpacing: 1),
                ),
              ],
            ),
          ],
        ),
      ],
    ),
  );
}

Widget tabsContainer(Size size) {
  return Stack(
    children: <Widget>[
      Container(
        height: size.height * 1.55,
        width: double.infinity,
        child: tabs(size),
      ),
    ],
  );
}

Widget tabs(Size size) {
  return new MaterialApp(
      home: new DefaultTabController(
    length: 4,
    child: new Scaffold(
      appBar: new PreferredSize(
        preferredSize: size * 0.95,
        child: new Container(
          child: new SafeArea(
            child: new Column(
              children: <Widget>[
                new TabBar(
                  unselectedLabelColor: Colors.black,
                  indicatorColor: Colors.blue,
                  labelColor: Colors.blue,
                  isScrollable: true,
                  tabs: [
                    new Text('Tweets'),
                    new Text('Replies'),
                    new Text('Images & Files'),
                    new Text('New Followers & Likes'),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  ));
}
