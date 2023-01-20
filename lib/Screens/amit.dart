import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2, //numbers of tab
        child: Scaffold(
          drawer: Drawer(),
          appBar: AppBar(
            title: Text(
              'Hello',
              style: TextStyle(
                  color: Colors.black, fontSize: 30, fontFamily: 'RobotoSla'),
            ),
            automaticallyImplyLeading: false,
            backgroundColor: Colors.deepPurpleAccent,
            actions: [
              IconButton(
                  icon: Icon(
                    Icons.search,
                    size: 30,
                  ),
                  onPressed: () {
                    //code to execute when this button is pressed
                  }),

              IconButton(
                  icon: Icon(
                    Icons.person,
                    size: 30,
                  ),
                  onPressed: () {
                    //code to execute when this button is pressed
                  }),

              //more widgets to place here
            ],
            //appbar widget on Scaffold
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.home)),
                Tab(icon: Icon(Icons.message))
                //more tabs here
              ],
            ),
          ),
        ));
  }
}
