import 'package:ddialyse/screens/const.dart';
import 'package:ddialyse/screens/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:line_icons/line_icons.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.white,
          size: 30,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Ionicons.menu_outline),
        ),
        actions: [
          InkWell(
            onTap: (() {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => profilePage()));
            }),
            child: CircleAvatar(
              radius: 21,
              backgroundImage: AssetImage('asset/man.jpg'),
            ),
          ),
          SizedBox(
            width: 5,
          ),
        ],
      ),
      body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomLeft,
        colors: [Colors.blue, primary],
      ))),
    );
  }
}
