import 'package:flutter/material.dart';

void main() => runApp(SafariApp());

class SafariApp extends StatefulWidget {
  @override
  State<SafariApp> createState() => _SafariAppState();
}

class _SafariAppState extends State<SafariApp> {
// This widget is the root of your application.
  int currentind = 0;
  List<String> images = [
    'lion.jpg',
    'african_elephant.jpg',
    'leopard.jpg',
    'cheeta.jpg',
    'giraffe.jpg',
    'hyena.jpg',
    'rhino.jpg',
    'mongoose.jpg'
  ];
  List<String> descriptions = [
    'The African Lion is the King of Beasts, the number one, Africa’s top carnivore, and right at the top of most people’s wishlists of animals on safari.',
    'Elephants are another of the Big Five, and a big favourite amongst animal lovers thanks to their intelligence and grace. Seeing a herd of elephants calmly crossing the road just metres from your safari vehicle is one of the greatest thrills of any trip to Africa, and if you’ve never seen them before it’ll be a truly heart-stopping moment.',
    'Leopards are, in my opinion at least, the most beautiful of all the African cats, with their stunning spotted coats and piercing green eyes. Unlike lions, leopards are solitary safari animals so you will rarely see more than one at a time; they hunt alone, preying on anything and everything from antelopes and baboons to rodents, birds, fish and even eating carrion.',
    'The cheetah is the fastest land mammal in the world, accelerating from 0 to 60 miles an hour in just three seconds and reaching a top speed of 75 miles an hour.  To be able to do this they’re much smaller and lighter than lions and leopards. They can’t keep up this speed for long though, which is why they stalk their prey through the long grasses, trying to get close enough before they pounce.',
    'With their glorious patterned skins and long necks, giraffes are the tallest living land animals, reaching around 5.5 metres in height. Giraffes are herbivores and their favourite food is the leaves of the acacia tree.',
    'The hyena is not one of the Big Five, but is sometimes referred to as being one of the ‘Ugly Five‘. There are three species of hyena (spotted, striped and brown) but the spotted is the most common and can be found all across sub-Saharan Africa. Unlike most mammals the females are actually bigger and heavier than the males, weighing up to around 80 kg, and it’s the females that dominate the pack.',
    'The name rhinoceros comes from Latin and means ‘nose horn’, though the word is often shortened to ‘rhino’.  There are two species of rhino that you might see on your African safari: the critically endangered black rhino, and the southern white rhino, which is more common.',
    'The mongoose is one of Africa’s smallest carnivores, and is part of the same family as the much-loved meerkat. There are 34 different kinds of mongoose, including the banded mongoose, Egyptian mongoose (the largest kind, reaching up to 60 cm), and the smallest, the 17 cm-long dwarf mongoose.',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Color.fromARGB(255, 37, 23, 21),
          appBar: AppBar(
            title: Text(
              "Safari Gallery",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            centerTitle: true,
            backgroundColor: Color.fromARGB(255, 204, 159, 26),
          ),
          body: Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: Row(
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
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image(
                        width: 450,
                        image: AssetImage(images[currentind]),
                      ),
                    ),
                    Divider(height: 20),
                    SizedBox(
                      width: 550,
                      child: Text(
                        descriptions[currentind],
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
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
