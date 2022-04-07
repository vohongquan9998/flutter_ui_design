import 'package:flutter/material.dart';
import 'package:flutter_storybook/models/book.dart';
import 'package:flutter_storybook/widget/clipper.dart';

class DetailsPage extends StatefulWidget {
  final Book books;

  DetailsPage({this.books});

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  width: MediaQuery.of(context).size.width * 9,
                  height: MediaQuery.of(context).size.height * .4,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 10,
                        spreadRadius: 3,
                      ),
                    ],
                    gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [Colors.teal[700], Colors.teal[400]]),
                  ),
                  child: Row(
                    children: [
                      Image(
                        image: AssetImage('${widget.books.imgPath}'),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 140,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),
                            child: FlatButton(
                                onPressed: () {},
                                child: Text(
                                  'Đọc truyện',
                                  style: TextStyle(
                                      fontSize: 20.0, color: Colors.teal),
                                )),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: 140,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),
                            child: FlatButton(
                                onPressed: () {},
                                child: Text(
                                  'Lưu kệ sách',
                                  style: TextStyle(
                                      fontSize: 20.0, color: Colors.teal),
                                )),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Column(
                children: [
                  ContainerDotWidget(
                    height: 50,
                    width: MediaQuery.of(context).size.width * .9,
                    Cwidget: Center(
                      child: Text(
                        '${widget.books.bookTitle}',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  ContainerDotWidget(
                    height: 50,
                    width: MediaQuery.of(context).size.width * .9,
                    Cwidget: Center(
                      child: Text(
                        '${widget.books.auThor}',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  ContainerDotWidget(
                    height: 50,
                    width: MediaQuery.of(context).size.width * .9,
                    Cwidget: Center(
                      child: Text(
                        'Thể loại',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  ...widget.books.cateGories.map((data) {
                    return Container(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 70),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            ContainerDotWidget(
                              height: 40,
                              width: 40,
                            ),
                            Text(
                              data,
                              style: TextStyle(
                                  fontSize: 15.0, color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
                  ContainerDotWidget(
                    height: 50,
                    width: MediaQuery.of(context).size.width * .9,
                    Cwidget: Center(
                      child: Text(
                        'Số trang:${widget.books.maxPage}',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  ContainerDotWidget(
                    height: 50,
                    width: MediaQuery.of(context).size.width * .9,
                    Cwidget: Center(
                      child: Text(
                        'Ngôn ngữ:${widget.books.lang}',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              backgroundColor: Colors.teal[100],
                              content: SingleChildScrollView(
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Text('${widget.books.deScription}',
                                      style: TextStyle(fontSize: 20.0)),
                                ),
                              ),
                            );
                          });
                    },
                    child: ContainerDotWidget(
                      height: 200,
                      width: MediaQuery.of(context).size.width * .9,
                      Cwidget: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: SingleChildScrollView(
                          child: Text(
                            '${widget.books.deScription}',
                            style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.white70,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ContainerDotWidget extends StatelessWidget {
  final double height;
  final double width;
  final Widget Cwidget;

  ContainerDotWidget({this.height, this.width, this.Cwidget});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(12, 8, 8, 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30),
                  bottomLeft: Radius.circular(30),
                ),
                gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [Colors.teal[700], Colors.teal[400]])),
            child: Cwidget,
          ),
        ],
      ),
    );
  }
}
