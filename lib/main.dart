import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  "https://www.designyourway.net/drb/wp-content/uploads/2018/05/Spiderman-wallpaper-1.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 30.0,
                ),
                Container(
                  child: Text(
                    'SPIDERMAN',
                    style: TextStyle(
                      fontSize: 40.0,
                      fontFamily: 'Spiderman',
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                CircleAvatar(
                  radius: 125,
                  backgroundColor: Color(0xffffffff),
                  child: CircleAvatar(
                    radius: 120,
                    backgroundImage: AssetImage('assets/spiderman.jpg'),
                  ),
                ),
                SizedBox(
                  height: 50.0,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * .06,
                  width: MediaQuery.of(context).size.height * .35,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    color: Colors.black,
                  ),
                  child: TextButton(
                    style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.red),
                    ),
                    onPressed: () {},
                    child: Text('Email: Peter_Parker@gmail.com'),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * .06,
                  width: MediaQuery.of(context).size.height * .35,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    color: Colors.black,
                  ),
                  child: TextButton(
                    style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.red),
                    ),
                    onPressed: () {},
                    child: Text('Phone Number: 1-555-555-5555'),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(15.0),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: TextButton(
                        style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                        ),
                        onPressed: () {},
                        child: Text('Created by Peter Parker'),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ), //
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
