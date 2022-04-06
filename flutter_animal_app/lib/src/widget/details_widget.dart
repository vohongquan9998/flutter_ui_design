import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animal_app/data/data.dart';
import 'package:flutter_animal_app/ultis/constant.dart';
import 'package:flutter_animal_app/ultis/size_config.dart';

class AnimalDetailWidget extends StatefulWidget {
  final int index;
  AnimalDetailWidget({required this.index});

  @override
  _AnimalDetailWidgetState createState() => _AnimalDetailWidgetState();
}

class _AnimalDetailWidgetState extends State<AnimalDetailWidget> {
  bool isChooseFood = true;
  bool isChooseHabitat = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: getScreenWidth(context, 0, true),
      color: Colors.black,
      child: Padding(
        padding: EdgeInsets.all(getScreenWidth(context, 40, false)),
        child: Stack(
          children: [
            Positioned.fill(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.network(
                  animalList()[widget.index].imageUrl,
                  fit: BoxFit.fitHeight,
                  color: Colors.black,
                  colorBlendMode: BlendMode.hue,
                ),
              ),
            ),
            Positioned(
              left: getScreenWidth(context, 100, false),
              right: getScreenWidth(context, 100, false),
              top: getScreenHeight(context, 70, false),
              child: BoxDetails(
                height: 780,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        animalList()[widget.index].name,
                        textAlign: TextAlign.center,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: kNameDetailsTextStyle(context),
                      ),
                      SizedBox(
                        height: getScreenHeight(context, 20, false),
                      ),
                      Text(
                        animalList()[widget.index].scientificName,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: kscientificNameDetailsTextStyle(context),
                      ),
                      SizedBox(
                        height: getScreenHeight(context, 20, false),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          for (int i = 0;
                              i < animalList()[widget.index].colors.length;
                              i++)
                            DotColors(
                                color: animalList()[widget.index].colors[i])
                        ],
                      ),
                      SizedBox(
                        height: getScreenHeight(context, 20, false),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'Locations:',
                            textAlign: TextAlign.center,
                            style: kscientificNameDetailsTextStyle(context),
                          ),
                          CarouselAnimalLocations(index: widget.index),
                        ],
                      ),
                      SizedBox(
                        height: getScreenHeight(context, 20, false),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  TextWidget(
                                      text: 'Skin Type:\t' +
                                          animalList()[widget.index].skinType),
                                  SizedBox(
                                    height: getScreenHeight(context, 5, false),
                                  ),
                                  TextWidget(
                                      text: 'Top Speed:\t' +
                                          animalList()[widget.index].topspeed +
                                          " mph"),
                                  SizedBox(
                                    height: getScreenHeight(context, 25, false),
                                  ),
                                ],
                              ),
                              Container(
                                color: Colors.black,
                                width: 2,
                                height: getScreenHeight(context, 45, false),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  TextWidget(
                                      text: 'Lifespan:\t' +
                                          animalList()[widget.index].lifespan +
                                          ' years'),
                                  SizedBox(
                                    height: getScreenHeight(context, 5, false),
                                  ),
                                  TextWidget(
                                      text: 'Group:\t' +
                                          animalList()[widget.index].group),
                                  SizedBox(
                                    height: getScreenHeight(context, 25, false),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Container(
                            height: getScreenHeight(context, 120, false),
                            child: CarouselSlider.builder(
                              itemCount: detailList().length,
                              itemBuilder: (context, index, i) {
                                return detailList()[index];
                              },
                              options: CarouselOptions(
                                scrollPhysics: BouncingScrollPhysics(),
                                height: getScreenHeight(context, 300, false),
                                autoPlay: true,
                                autoPlayInterval: Duration(seconds: 5),
                                enlargeCenterPage: true,
                                autoPlayCurve: Curves.fastOutSlowIn,
                                autoPlayAnimationDuration:
                                    Duration(milliseconds: 1800),
                                enableInfiniteScroll: false,
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: getScreenHeight(context, 20, false),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                isChooseFood = true;
                                isChooseHabitat = false;
                              });
                            },
                            child: Text(
                              'Food',
                              style: isChooseFood
                                  ? kTabChoseDetailsTextStyle(context)
                                  : kTabNotChooseDetailsTextStyle(context),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                isChooseHabitat = true;
                                isChooseFood = false;
                              });
                            },
                            child: Text(
                              'Habitat',
                              style: isChooseHabitat
                                  ? kTabChoseDetailsTextStyle(context)
                                  : kTabNotChooseDetailsTextStyle(context),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: getScreenHeight(
                            context,
                            animalList()[widget.index].name.length > 15
                                ? 0
                                : 10,
                            false),
                      ),
                      Container(
                          width: getScreenWidth(context, 300, false),
                          height: getScreenHeight(context, 200, false),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.black26,
                          ),
                          child: CarouselSlider.builder(
                            itemCount: isChooseFood
                                ? animalList()[widget.index].food.length
                                : animalList()[widget.index].habitat.length,
                            itemBuilder: (context, index, i) {
                              return isChooseFood
                                  ? Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Image.asset(
                                          animalList()[widget.index]
                                              .foodImageUrl[index],
                                          width: getScreenWidth(
                                              context, 130, false),
                                          height: 40,
                                          fit: BoxFit.fitWidth,
                                        ),
                                        Text(
                                          animalList()[widget.index]
                                              .food[index],
                                          textAlign: TextAlign.center,
                                        )
                                      ],
                                    )
                                  : Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          animalList()[widget.index]
                                              .habitat[index],
                                          textAlign: TextAlign.center,
                                          style:
                                              kHabitatDetailsTextStyle(context),
                                        )
                                      ],
                                    );
                            },
                            options: CarouselOptions(
                              scrollPhysics: BouncingScrollPhysics(),
                              height: getScreenHeight(context, 300, false),
                              autoPlay: true,
                              autoPlayInterval: Duration(seconds: 5),
                              enlargeCenterPage: true,
                              autoPlayCurve: Curves.fastOutSlowIn,
                              autoPlayAnimationDuration:
                                  Duration(milliseconds: 1800),
                              enableInfiniteScroll: false,
                            ),
                          )),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> detailList() {
    List<Widget> data = [detailsWidget_1(), detailsWidget_2()];
    return data;
  }

  Widget detailsWidget_1() {
    return Column(
      children: [
        TextWidget(text: 'Weight:\t' + animalList()[widget.index].weight),
        SizedBox(
          height: getScreenHeight(context, 5, false),
        ),
        TextWidget(text: 'Length:\t' + animalList()[widget.index].length),
        SizedBox(
          height: getScreenHeight(context, 25, false),
        ),
        TextWidget(
            text: 'Life Style:\t' + animalList()[widget.index].lifeStyle),
        SizedBox(
          height: getScreenHeight(context, 5, false),
        ),
        TextWidget(
            text: 'Population:\t' + animalList()[widget.index].population),
      ],
    );
  }

  Widget detailsWidget_2() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextWidget(text: animalList()[widget.index].fact),
    );
  }
}

class CarouselAnimalLocations extends StatelessWidget {
  const CarouselAnimalLocations({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: getScreenWidth(context, 300, false),
      height: getScreenWidth(context, 120, false),
      child: CarouselSlider.builder(
        itemCount: animalList()[index].location.length,
        itemBuilder: (BuildContext context, int indexLocation, int i) {
          return Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getScreenWidth(context, 20, false)),
            child: Container(
              width: getScreenWidth(context, 300, false),
              height: getScreenWidth(context, 110, false),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(colors: <Color>[
                  Colors.black,
                  Colors.black.withOpacity(.07),
                ], begin: Alignment.topLeft, end: Alignment.bottomRight),
              ),
              child: Center(
                child: Text(
                  animalList()[index].location[indexLocation],
                  textAlign: TextAlign.center,
                  style: kLocationDetailsTextStyle(context),
                ),
              ),
            ),
          );
        },
        options: CarouselOptions(
          scrollPhysics: BouncingScrollPhysics(),
          height: getScreenHeight(context, 300, false),
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 5),
          enlargeCenterPage: true,
          autoPlayCurve: Curves.fastOutSlowIn,
          autoPlayAnimationDuration: Duration(milliseconds: 1800),
          enableInfiniteScroll: false,
        ),
      ),
    );
  }
}

class TextWidget extends StatelessWidget {
  final String text;
  TextWidget({required this.text});
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: kSmallDetailsTextStyle(context),
    );
  }
}

class DotColors extends StatelessWidget {
  final Color color;
  DotColors({required this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 25,
        height: 25,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: color,
            border: Border.all(color: Colors.black54, width: 2.0)),
      ),
    );
  }
}

class BoxDetails extends StatelessWidget {
  final Widget child;
  final double height;
  BoxDetails({required this.child, required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: getScreenHeight(context, 20, false)),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(
              20,
            ),
            bottomLeft: Radius.circular(150),
            bottomRight: Radius.circular(150)),
        color: Colors.white.withOpacity(.8),
      ),
      height: getScreenHeight(context, height, false),
      width: getScreenWidth(context, 750, false),
      child: child,
    );
  }
}
