import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  List<Widget> scrollerList(double height) {
    List<Widget> data = [
      Toyota_Concept_I_Series(height: height),
      TheFutureHaveArrived(height: height),
      LessOfAMachineMoreOfAPal(height: height),
      NeueToyotaConceptCarsinTokio(height: height),
      ConceptILooksAsBrilliant(height: height),
      ConceptIPutsTheIInTeam(height: height),
      JoinUsInFuture(height: height),
      PictureList(),
      Footer(height: height),
    ];
    return data;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Image.asset(
          'assets/29e256716bbae54c64072fdbb8b5d080.jpeg',
          width: size.width * .05,
          height: size.height * .05,
        ),
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.black),
        actions: [IconButton(icon: Icon(Icons.menu), onPressed: () {})],
      ),
      body: SafeArea(
        child: Container(
          width: size.width,
          height: double.infinity,
          child: ListView.builder(
            physics: AlwaysScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return scrollerList(size.height * .55)[index];
            },
            itemCount: scrollerList(size.height * .55).length,
          ),
        ),
      ),
    );
  }
}

class Toyota_Concept_I_Series extends StatelessWidget {
  final double height;

  const Toyota_Concept_I_Series({Key key, this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            color: Colors.black,
            width: size.width,
            height: 1,
          ),
          SizedBox(
            height: size.height * .02,
          ),
          Image.asset(
            'assets/7502b12d9a12f809e3996ea2e26b5c30.jpeg',
            width: size.width,
            height: size.height * .3,
          ),
          SizedBox(
            height: size.height * .02,
          ),
          Text(
            'Toyota Concept-I Series',
            style: TextStyle(
                color: Colors.black,
                fontSize: size.height * .08,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: size.height * .01,
          ),
          Container(
            width: size.width * .42,
            child: Text(
              'Toyota Concept-i and its forward-thinking UX hold a mirror up to a future that is warm, friendly, engaging and, most of all—fun. Without further ado, meet Concept-i.',
              style: TextStyle(
                  color: Colors.black,
                  fontStyle: FontStyle.italic,
                  fontSize: size.height * .02,
                  fontWeight: FontWeight.w500),
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          SizedBox(
            height: size.height * .02,
          ),
        ],
      ),
    );
  }
}

class TheFutureHaveArrived extends StatelessWidget {
  final double height;

  const TheFutureHaveArrived({Key key, this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: height,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            'assets/6f5de08df6c1a4f14c65050e1ff59f2c.jpeg',
            width: size.width * .5,
            height: size.height,
          ),
          SizedBox(
            width: size.width * .1,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'The Future Have Arrived',
                style: TextStyle(
                    fontSize: size.height * .035, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: size.height * .02,
              ),
              Container(
                width: size.width * .15,
                child: Text(
                  "While we can't predict the future, we can inspire it. So what will our cars look like and how will they function? Will we drive them or will they drive us? That seems to be the question on everyone's mind. Well, we have an idea. Cars are for people who want to go to more places safely and efficiently",
                  style: TextStyle(
                    fontSize: size.height * .016,
                    fontStyle: FontStyle.italic,
                  ),
                  maxLines: 6,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              SizedBox(
                height: size.height * .02,
              ),
              Container(
                width: size.width * .1,
                height: size.height * .05,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  gradient: LinearGradient(colors: [
                    Colors.blue[300],
                    Colors.purpleAccent[100],
                    Colors.purpleAccent
                  ], begin: Alignment.topLeft, end: Alignment.centerRight),
                ),
                child: Center(
                  child: Text(
                    'Learn More'.toUpperCase(),
                    style: TextStyle(
                        fontSize: size.height * .02,
                        wordSpacing: 2,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class LessOfAMachineMoreOfAPal extends StatelessWidget {
  final double height;

  const LessOfAMachineMoreOfAPal({Key key, this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: height,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Less of a machine.\nMore of a pal.',
                style: TextStyle(
                    fontSize: size.height * .035, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: size.height * .02,
              ),
              Container(
                width: size.width * .15,
                child: Text(
                  "Concept-i follows our belief that vehicles shouldn't start with technology—they should start, and end, with the experience of the people who use them. Therefore, Concept-i was built from the inside out, with a focus on making it immersive, energetic and, most importantly—approachable.",
                  style: TextStyle(
                    fontSize: size.height * .016,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
              SizedBox(
                height: size.height * .02,
              ),
              Container(
                width: size.width * .1,
                height: size.height * .05,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.black),
                child: Center(
                  child: Text(
                    'Learn More'.toUpperCase(),
                    style: TextStyle(
                        wordSpacing: 2,
                        color: Colors.white,
                        fontSize: size.height * .02,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            width: size.width * .1,
          ),
          Image.asset(
            'assets/094e953db5791c71cbf6cb2692c9da18.jpeg',
            width: size.width * .5,
            height: size.height,
          ),
        ],
      ),
    );
  }
}

class NeueToyotaConceptCarsinTokio extends StatelessWidget {
  final double height;

  const NeueToyotaConceptCarsinTokio({Key key, this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: height,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: size.width * .25,
                child: Text(
                  'Neue Toyota Concept Cars in Tokio',
                  style: TextStyle(
                      fontSize: size.height * .035,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: size.height * .02,
              ),
              Container(
                width: size.width * .15,
                child: Text(
                  "At the 2016 Consumer Electronics Show (CES) in Las Vegas, Toyota is demo’ing it’s idea of the “Future of Mobility”. As has become plainly obvious over the last couple years, Toyota believes plug-in vehicles will fail and that fuel cell EV’s are the future. While other companies are at CES showing off battery based EV’s, Toyota is sticking with their fuel cells.",
                  style: TextStyle(
                    fontSize: size.height * .016,
                    fontStyle: FontStyle.italic,
                  ),
                  maxLines: 6,
                  overflow: TextOverflow.fade,
                ),
              ),
              SizedBox(
                height: size.height * .02,
              ),
              Container(
                width: size.width * .1,
                height: size.height * .05,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  gradient: LinearGradient(colors: [
                    Colors.greenAccent[100],
                    Colors.blue[300],
                    Colors.blue
                  ], begin: Alignment.topLeft, end: Alignment.centerRight),
                ),
                child: Center(
                  child: Text(
                    'Learn More'.toUpperCase(),
                    style: TextStyle(
                        fontSize: size.height * .02,
                        wordSpacing: 2,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: size.height * .1,
          ),
          Image.asset(
            'assets/8be8de663c4ab7eee8b3e53c31cbb581.jpeg',
            width: size.width * .5,
            height: size.height,
          ),
        ],
      ),
    );
  }
}

class ConceptILooksAsBrilliant extends StatelessWidget {
  final double height;

  const ConceptILooksAsBrilliant({Key key, this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: height,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            'assets/4c134e2df3106c5e28f93f94161e3242.png',
            width: size.width * .5,
            height: size.height,
          ),
          SizedBox(
            width: size.width * .1,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Concept-i looks as brilliant',
                style: TextStyle(
                    fontSize: size.height * .035, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: size.height * .02,
              ),
              Container(
                width: size.width * .15,
                child: Text(
                  "Its minimal yet artful interior is designed to help support its user experience. Lines flow from the center of the dashboard throughout the vehicle, while Yui travels around them, using light, sound and even touch to communicate critical information. It utilizes a single wide-screen, 3-D, full-color Head-Up Display that blends into an interior that is clean and uncluttered.",
                  style: TextStyle(
                    fontSize: size.height * .016,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
              SizedBox(
                height: size.height * .02,
              ),
              Container(
                width: size.width * .1,
                height: size.height * .05,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.black),
                child: Center(
                  child: Text(
                    'Learn More'.toUpperCase(),
                    style: TextStyle(
                        wordSpacing: 2,
                        color: Colors.white,
                        fontSize: size.height * .02,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ConceptIPutsTheIInTeam extends StatelessWidget {
  final double height;

  const ConceptIPutsTheIInTeam({Key key, this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: height,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [Colors.blue[300], Colors.purpleAccent],
            begin: Alignment.topLeft,
            end: Alignment.centerRight),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            width: size.width * .3,
            child: Text(
              "In the future, we envision you, Yui and the car working together—like teammates. Now, here comes the really fun part. Thanks to the car's advanced automated driving technologies, people with all levels of ability can enjoy the ride. You're still in charge of the car. However, through biometric sensors throughout the car, Concept-i can detect what you're feeling. That information then gets analyzed by the car's AI. That's when the automated features kick in. ",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: size.height * .023,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            width: size.width * .05,
          ),
          Container(
            width: size.width * .5,
            height: size.height * .35,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(150),
                    bottomLeft: Radius.circular(150))),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: size.width * .15,
                    child: Text(
                      'Concept-i puts the “i” in team.',
                      style: TextStyle(
                          fontSize: size.height * .035,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: size.height * .01,
                  ),
                  Container(
                    width: size.width * .1,
                    height: size.height * .05,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Colors.black),
                    child: Center(
                      child: Text(
                        'Learn More'.toUpperCase(),
                        style: TextStyle(
                            wordSpacing: 2,
                            color: Colors.white,
                            fontSize: size.height * .02,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class JoinUsInFuture extends StatelessWidget {
  final double height;

  const JoinUsInFuture({Key key, this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: height,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            'assets/5ca4eb0fe5123ec0b4e42bfc8e44ced5.jpeg',
            width: size.width * .455,
            height: size.height,
          ),
          SizedBox(
            width: size.width * .1,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Join us in the future.',
                style: TextStyle(
                    fontSize: size.height * .035, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: size.height * .02,
              ),
              Container(
                width: size.width * .15,
                child: Text(
                  "Check out the recent unveiling of Toyota Concept-i at CES 2017. And if you want even more info, check out our recent press release.",
                  style: TextStyle(
                    fontSize: size.height * .016,
                    fontStyle: FontStyle.italic,
                  ),
                  maxLines: 6,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              SizedBox(
                height: size.height * .02,
              ),
              Container(
                width: size.width * .1,
                height: size.height * .05,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  gradient: LinearGradient(colors: [
                    Colors.blue[300],
                    Colors.purpleAccent[100],
                    Colors.purpleAccent
                  ], begin: Alignment.topLeft, end: Alignment.centerRight),
                ),
                child: Center(
                  child: Text(
                    'join now'.toUpperCase(),
                    style: TextStyle(
                        fontSize: size.height * .02,
                        wordSpacing: 2,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class PictureList extends StatelessWidget {
  List<String> list1 = ['car1', 'car2', 'car3', 'car4'];
  List<String> list2 = ['car5', 'car6', 'car7', 'car8'];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: size.height * .1,
          ),
          Text(
            'Join us in the future.'.toUpperCase(),
            style: TextStyle(
                fontSize: size.height * .04, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: size.height * .02,
          ),
          Container(
            width: size.width * .15,
            child: Text(
              "Our vision for the car of the future starts with \"Yui.\"Designed from the inside out, Toyota Concept-i is an exciting glimpse into a future mobility that is warm, friendly and revolves around you.",
              style: TextStyle(
                fontSize: size.height * .016,
                fontStyle: FontStyle.italic,
              ),
              maxLines: 6,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          SizedBox(
            height: size.height * .05,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 0; i < list1.length; i++)
                Image.asset(
                  'assets/' + list1[i] + '.png',
                  width: size.width / 4,
                  height: size.height * .3,
                )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 0; i < list2.length; i++)
                Image.asset(
                  'assets/' + list2[i] + '.png',
                  width: size.width / 4,
                  height: size.height * .3,
                )
            ],
          ),
        ],
      ),
    );
  }
}

class Footer extends StatelessWidget {
  final double height;

  const Footer({Key key, this.height}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: height - size.height * .1,
      child: Column(
        children: [
          Container(
            height: size.height * .35,
            color: Colors.black87,
            child: Center(
              child: Image.asset(
                'assets/37296cc26cc11a0fe94853b94e0ea48f.png',
                width: size.width * .1,
                height: size.height * .1,
              ),
            ),
          ),
          Container(
            height: size.height * .1,
            color: Colors.black54,
            child: Center(
              child: Text('Create by VHQ'),
            ),
          ),
        ],
      ),
    );
  }
}
