import 'package:flutter/material.dart';

void main() => runApp(SafariApp());

class SafariApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text(
              "Safari Look up",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            centerTitle: true,
            backgroundColor: Colors.amber[400],
          ),
          body: Center(
            child: Column(
              children: <Widget>[
                Image(
                  image: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRB1CJ_la7TL_PDwBMhvGFSMOfQy8m4ZqA6fh7NK9lQE9mIW_eTSyogKjFHZ2DHIFB5IMA&usqp=CAU"),
                ),
                Card(
                  child: Text(
                      "The giraffe is a tall African mammal belonging to the genus Giraffa. \nSpecifically, It is an even-toed ungulate. It is the tallest living terrestrial animal ."),
                )
              ],
            ),
          ),
        ));
  }
}
