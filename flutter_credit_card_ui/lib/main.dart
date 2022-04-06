import 'package:flutter/material.dart';
import 'package:flutter_credit_card_ui/src/card/bubble_card/card_visa_bubble_back.dart';
import 'package:flutter_credit_card_ui/src/card/bubble_card/card_visa_bubble_front.dart';
import 'package:flutter_credit_card_ui/src/card/diamond_card/card_visa_diamond_back.dart';
import 'package:flutter_credit_card_ui/src/card/diamond_card/card_visa_diamond_front.dart';
import 'package:flutter_credit_card_ui/src/card/meteor_card/card_visa_meteor_front.dart';
import 'package:flutter_credit_card_ui/src/card/zigzag_card/card_master_zigzag_back.dart';
import 'package:flutter_credit_card_ui/src/card/zigzag_card/card_master_zigzag_front.dart';
import 'package:flutter_credit_card_ui/src/widget/credit_card.dart';

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

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> getWidget() {
    List<Widget> data = [
      CreditCard(
        frontChild: Card_Bubble_bg(),
        backChild: Card_Bubble_back(),
        color: Colors.blue,
      ),
      CreditCard(
        frontChild: Card_ZigZag_Front(),
        backChild: Card_ZigZag_Back(),
        color: Colors.red.shade800,
      ),
      CreditCard(
        frontChild: Card_Diamond_Front(),
        backChild: Card_Diamond_Back(),
        color: Colors.teal.shade400,
      ),
      CreditCard(
        frontChild: Card_Meteor_Front(),
        backChild: Card_Diamond_Back(),
        color: Colors.black,
      ),
    ];
    return data;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        child: ListView.builder(
          itemBuilder: (context, index) {
            return getWidget()[index];
          },
          itemCount: getWidget().length,
        ),
      ),
    ));
  }
}
