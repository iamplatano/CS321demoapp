import 'package:flutter/material.dart';

void main() => runApp(SafariApp());

class SafariApp extends StatefulWidget {
  @override
  State<SafariApp> createState() => _SafariAppState();
}

class _SafariAppState extends State<SafariApp> {
  // This widget is the root of your application.
  List<String> images = ['lion.jpg', 'african_elephant.jpg', 'leopard.jpg'];
  List<String> descriptions = [
    'The African Lion is the King of Beasts, the number one, Africa’s top carnivore, and right at the top of most people’s wishlists of animals on safari.',
    'Elephants are another of the Big Five, and a big favourite amongst animal lovers thanks to their intelligence and grace. Seeing a herd of elephants calmly crossing the road just metres from your safari vehicle is one of the greatest thrills of any trip to Africa, and if you’ve never seen them before it’ll be a truly heart-stopping moment.',
    'Leopards are, in my opinion at least, the most beautiful of all the African cats, with their stunning spotted coats and piercing green eyes. Unlike lions, leopards are solitary safari animals so you will rarely see more than one at a time; they hunt alone, preying on anything and everything from antelopes and baboons to rodents, birds, fish and even eating carrion.'
  ];

  int currentind = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Color.fromARGB(255, 37, 23, 21),
          appBar: AppBar(
            title: Text(
              "Safari Look up",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            centerTitle: true,
            backgroundColor: Color.fromARGB(255, 204, 159, 26),
          ),
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: IconButton(
                      iconSize: 50,
                      color: Colors.white,
                      onPressed: () {
                        setState(() {
                          currentind -= 1;
                          if (currentind < 0) {
                            currentind = images.length - 1;
                          }
                        });
                      },
                      icon: Icon(Icons.navigate_before_rounded)),
                ),
                Column(
                  children: <Widget>[
                    Image(
                      image: AssetImage(images[currentind]),
                      width: 450,
                    ),
                    Divider(height: 20),
                    SizedBox(
                      width: 550,
                      child: Text(
                        descriptions[currentind],
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    )
                  ],
                ),
                Expanded(
                  child: IconButton(
                      iconSize: 50,
                      color: Colors.white,
                      onPressed: () {
                        setState(() {
                          currentind += 1;
                          if (currentind > images.length - 1) {
                            currentind = 0;
                          }
                        });
                      },
                      icon: Icon(Icons.navigate_next_rounded)),
                ),
              ],
            ),
          ),
        ));
  }
}
