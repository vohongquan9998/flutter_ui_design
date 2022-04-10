import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  List<Widget> _scroll_list(double height) {
    List<Widget> data = [
      TitleBanner(
        height: height,
      ),
      MenuPart(
        height: height,
      ),
      LearningOnline(
        height: height,
      ),
      AsianFood(),
      MeatAndFish(
        height: height,
      ),
      FarmProduct(),
      FooterContact(
        height: height,
      ),
      Footer(),
    ];
    return data;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.orange[700],
        shadowColor: Colors.orange[700],
        iconTheme: IconThemeData(color: Colors.white),
        actions: [IconButton(icon: Icon(Icons.menu), onPressed: () {})],
      ),
      body: Container(
        width: size.width,
        height: double.infinity,
        child: ListView.builder(
          itemBuilder: (context, index) {
            return _scroll_list(size.height * .7)[index];
          },
          itemCount: _scroll_list(0).length,
        ),
      ),
    );
  }
}

class TitleBanner extends StatelessWidget {
  final double height;

  const TitleBanner({Key key, this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: height,
      child: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/delicious-healthy-asian-food-black-textured-background-with-copy-space.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            left: size.width * .15,
            bottom: 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'homemade'.toUpperCase(),
                  style: TextStyle(
                    fontSize: size.height * .1,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'restaurant'.toUpperCase(),
                  style: TextStyle(
                    fontSize: size.height * .09,
                    color: Colors.white,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                Container(
                  width: size.width * .3,
                  child: Text(
                    'Uis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur Image from Freepik',
                    style: TextStyle(
                        fontSize: size.height * .015,
                        color: Colors.white,
                        fontStyle: FontStyle.italic),
                  ),
                ),
                SizedBox(
                  height: size.height * .03,
                ),
                Text(
                  'Learn more'.toUpperCase(),
                  style: TextStyle(
                    fontSize: size.height * .02,
                    color: Colors.orange,
                  ),
                ),
                Container(
                  width: size.width * .067,
                  height: 2,
                  color: Colors.orange,
                ),
                SizedBox(
                  height: size.height * .02,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class MenuPart extends StatelessWidget {
  final double height;

  const MenuPart({Key key, this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: height,
      child: Stack(
        children: [
          Container(
            width: size.width,
            color: Colors.grey.shade200,
            height: size.height * .1,
          ),
          Positioned(
            bottom: 0,
            child: Container(
              width: size.width,
              color: Colors.grey.shade200,
              height: size.height * .115,
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    width: size.width * .6,
                    color: Colors.yellowAccent.shade700,
                    height: size.height * .3,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/53e1dd434950b108f5d08460962934761237d6ed5a4c704c7c2c7bd3964dc05f_1280.jpg',
                        width: size.width * .33,
                        height: size.height * .54,
                        fit: BoxFit.fitHeight,
                      ),
                      SizedBox(
                        width: size.width * .1,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'MENU',
                            style: TextStyle(
                              fontSize: size.height * .1,
                              color: Colors.black87,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            height: size.height * .1,
                          ),
                          Container(
                            width: size.width * .2,
                            child: Text(
                              'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                              style: TextStyle(
                                fontSize: size.height * .02,
                                color: Colors.black87,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: size.height * .05,
                          ),
                          Text(
                            'Learn More',
                            style: TextStyle(
                              fontSize: size.height * .03,
                              color: Colors.orange.shade600,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Spacer(),
              Stack(
                children: [
                  Positioned(
                    left: 0,
                    child: Container(
                      width: size.width * .3,
                      color: Colors.orange.shade600,
                      height: height,
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/5ee1dc404c50b108f5d08460962934761237d6ed5a4c704c7c2c7bd3964dc25a_1280.jpg',
                        width: size.width * .25,
                        height: size.height * .2,
                        fit: BoxFit.fitWidth,
                      ),
                      SizedBox(
                        height: size.height * .07,
                      ),
                      Image.asset(
                        'assets/bergur.png',
                        width: size.width * .25,
                        height: size.height * .2,
                        fit: BoxFit.fitWidth,
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}

class LearningOnline extends StatelessWidget {
  final double height;

  const LearningOnline({Key key, this.height}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: height,
      child: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'bglearningonline.png',
              fit: BoxFit.cover,
              width: size.width,
            ),
          ),
          Container(
            width: size.width,
            height: height,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Learn Cooking Online'.toUpperCase(),
                    style: TextStyle(
                      fontSize: size.height * .08,
                      color: Colors.orange.shade600,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Container(
                    width: size.width * .4,
                    child: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: size.height * .02,
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height * .02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _containerBox(
                        "1",
                        'Base Meals',
                        'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',
                        size,
                        Colors.white,
                        Colors.black,
                        Colors.orange.shade600,
                      ),
                      SizedBox(
                        width: size.width * .02,
                      ),
                      _containerBox(
                        "2",
                        'Knife Skills',
                        'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',
                        size,
                        Colors.black.withOpacity(.6),
                        Colors.white,
                        Colors.orange.shade600,
                      ),
                      SizedBox(
                        width: size.width * .02,
                      ),
                      _containerBox(
                        "3",
                        'Cooking Chicken',
                        'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',
                        size,
                        Colors.orange.shade600,
                        Colors.white,
                        Colors.white,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _containerBox(String index, String title, String description,
      Size size, Color color, Color forecolor, Color learnMore) {
    return Container(
      width: size.width * .2,
      height: size.height * .45,
      color: color,
      child: Padding(
        padding: EdgeInsets.all(size.height * .02),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              index,
              style: TextStyle(
                  fontSize: size.height * .08,
                  color: forecolor,
                  fontStyle: FontStyle.italic),
            ),
            SizedBox(
              height: size.height * .02,
            ),
            Container(
              width: size.width * .2,
              child: Text(
                title,
                style: TextStyle(
                    fontSize: size.height * .035,
                    color: forecolor,
                    fontWeight: FontWeight.w800),
              ),
            ),
            SizedBox(
              height: size.height * .015,
            ),
            Container(
              width: size.width * .2,
              child: Text(
                description,
                style: TextStyle(
                    fontSize: size.height * .015,
                    color: forecolor,
                    fontWeight: FontWeight.w400),
              ),
            ),
            SizedBox(
              height: size.height * .02,
            ),
            Text(
              'Learn More',
              style: TextStyle(
                fontSize: size.height * .03,
                color: learnMore,
                fontWeight: FontWeight.w300,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AsianFood extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height * .8,
      child: Stack(
        children: [
          Container(
            width: size.width,
            height: size.height * .8,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: size.width / 2,
                height: size.height * .65,
                color: Colors.white,
              ),
              Container(
                width: size.width / 2,
                height: size.height * .65,
                color: Colors.orange.shade600,
              ),
            ],
          ),
          Positioned(
            left: size.width * .2,
            right: size.width * .2,
            child: Column(
              children: [
                Container(
                  width: size.width * .4,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'ASIAN',
                        style: TextStyle(
                            fontSize: size.height * .08,
                            fontStyle: FontStyle.italic,
                            color: Colors.black),
                      ),
                      SizedBox(
                        width: size.width * .02,
                      ),
                      Text(
                        'FOOD',
                        style: TextStyle(
                            fontSize: size.height * .08,
                            fontStyle: FontStyle.italic,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: size.height * .025,
                ),
                Container(
                  width: size.width * .5,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: size.width * .2,
                        child: Text(
                          'While it is important to have naturally occurring sugars in your diet, many foods contain harmful added sugars that contain no nutritional value.',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: size.height * .025,
                              fontStyle: FontStyle.italic,
                              color: Colors.black),
                        ),
                      ),
                      SizedBox(
                        width: size.width * .02,
                      ),
                      Container(
                        width: size.width * .2,
                        child: Text(
                          'While it is important to have naturally occurring sugars in your diet, many foods contain harmful added sugars that contain no nutritional value.',
                          textAlign: TextAlign.end,
                          style: TextStyle(
                              fontSize: size.height * .025,
                              fontStyle: FontStyle.italic,
                              color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: size.height * .05,
            left: size.width * .155,
            child: Image.asset(
              'assets/15a9d539-7841-4798-bade-659827294c3a.jpeg',
              width: size.width * .3,
              height: size.height * .4,
              fit: BoxFit.fitHeight,
            ),
          ),
          Positioned(
            left: size.width * .355,
            bottom: size.height * .08,
            child: Image.asset(
              'assets/6b889c51-2ea7-4a3c-a558-cec4fe135318.jpeg',
              width: size.width * .3,
              height: size.height * .4,
              fit: BoxFit.fitHeight,
            ),
          ),
          Positioned(
            bottom: size.height * .05,
            right: size.width * .155,
            child: Image.asset(
              'assets/80fd104a-865a-4af6-8b1a-b07a3d7d47bf.jpeg',
              width: size.width * .3,
              height: size.height * .4,
              fit: BoxFit.fitHeight,
            ),
          ),
        ],
      ),
    );
  }
}

class MeatAndFish extends StatelessWidget {
  final double height;

  const MeatAndFish({Key key, this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: height,
      child: Stack(
        children: [
          Container(
            width: size.width,
            height: height,
            color: Colors.orange.shade600,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                'assets/bergur.png',
                width: size.width * .45,
                height: height,
                fit: BoxFit.cover,
              ),
              Image.asset(
                'assets/meat.png',
                width: size.width * .45,
                height: height,
                fit: BoxFit.cover,
              ),
            ],
          ),
          Positioned(
            top: size.height * .05,
            child: Container(
              width: size.width,
              height: size.height * .01,
              color: Colors.orange.shade600,
            ),
          ),
          Positioned(
            top: size.height * .1,
            child: Container(
              width: size.width,
              height: size.height * .01,
              color: Colors.orange.shade600,
            ),
          ),
        ],
      ),
    );
  }
}

class FarmProduct extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height * .5,
      child: Stack(
        children: [
          Container(
            width: size.width,
            height: size.height,
          ),
          Positioned(
            top: size.height * .1,
            bottom: size.height * .1,
            child: Container(
              width: size.width * .4,
              height: size.height * .25,
              color: Colors.orange.shade600,
            ),
          ),
          Positioned(
            top: size.height * .17,
            left: size.width * .3,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/chef.png',
                  width: size.width * .15,
                  height: size.height * .25,
                  fit: BoxFit.fitHeight,
                ),
                SizedBox(
                  width: size.width * .02,
                ),
                Image.asset(
                  'assets/veggie.png',
                  width: size.width * .15,
                  height: size.height * .25,
                  fit: BoxFit.fitHeight,
                ),
                SizedBox(
                  width: size.width * .02,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Farm Product'.toUpperCase(),
                      style: TextStyle(
                        color: Colors.orange.shade600,
                        fontSize: size.height * .03,
                      ),
                    ),
                    SizedBox(
                      height: size.height * .02,
                    ),
                    Container(
                      width: size.width * .2,
                      child: Text(
                        'The use of local farm products lorem ipsum dolor sit amet, consectetur adipiscing elit nullam nunc justo sagittis suscipit ultrices.',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: size.height * .02,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: size.height * .02,
                    ),
                    Text(
                      'Learn more'.toUpperCase(),
                      style: TextStyle(
                        fontSize: size.height * .02,
                        color: Colors.orange,
                      ),
                    ),
                    Container(
                      width: size.width * .067,
                      height: 2,
                      color: Colors.orange,
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class FooterContact extends StatelessWidget {
  final double height;

  const FooterContact({Key key, this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: height,
      child: Stack(
        children: [
          Positioned.fill(
            child: Transform.rotate(
              angle: 180 * pi / 180,
              child: Image.asset(
                'assets/delicious-healthy-asian-food-black-textured-background-with-copy-space.jpg',
                fit: BoxFit.cover,
                filterQuality: FilterQuality.high,
              ),
            ),
          ),
          Positioned(
            right: size.width * .25,
            top: size.height * .1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'FRESH FOOD EVERYDAY',
                  style: TextStyle(
                      fontSize: size.height * .03, color: Colors.white),
                ),
                SizedBox(
                  height: size.height * .01,
                ),
                Container(
                  width: size.width * .2,
                  color: Colors.white,
                  height: 1,
                ),
                SizedBox(
                  height: size.height * .01,
                ),
                Container(
                  width: size.width * .2,
                  child: Text(
                    'Our Restaurant is a family-owned restaurant that has been proudly serving around the 1940s located on the corner of Broadway and West 112th Street in New York.',
                    style: TextStyle(
                        fontSize: size.height * .015, color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: size.height * .02,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.mail,
                      color: Colors.white,
                      size: size.height * .03,
                    ),
                    SizedBox(
                      width: size.width * .01,
                    ),
                    Icon(
                      Icons.phone,
                      color: Colors.white,
                      size: size.height * .03,
                    ),
                    SizedBox(
                      width: size.width * .01,
                    ),
                    Icon(
                      Icons.account_tree_outlined,
                      color: Colors.white,
                      size: size.height * .03,
                    ),
                    SizedBox(
                      width: size.width * .01,
                    ),
                    Icon(
                      Icons.add_location_sharp,
                      color: Colors.white,
                      size: size.height * .03,
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          width: size.width,
          height: size.height * .2,
          color: Colors.black54,
        ),
        Container(
          width: size.width,
          height: size.height * .1,
          color: Colors.black87,
        ),
      ],
    );
  }
}
