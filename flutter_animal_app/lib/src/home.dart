import 'package:flutter/material.dart';
import 'package:flutter_animal_app/data/data.dart';
import 'package:flutter_animal_app/src/widget/child_widget.dart';
import 'package:flutter_animal_app/src/widget/details_widget.dart';
import 'package:flutter_animal_app/src/widget/flipcard.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          child: ListView.builder(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Card(
                color: Colors.black,
                elevation: 0.0,
                child: FlipCard(
                    direction: FlipDirection.HORIZONTAL,
                    speed: 1000,
                    front: AnimalChildWidget(index: index),
                    back: AnimalDetailWidget(index: index)),
              );
            },
            itemCount: animalList().length,
          ),
        ),
      ),
    );
  }
}
