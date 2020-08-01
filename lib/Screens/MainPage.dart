import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:whats_up_doc/Screens/Search.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var _controller = ScrollController(initialScrollOffset: 0.0);
  var _shape = RoundedRectangleBorder(borderRadius: BorderRadius.circular(20));

  GestureDetector _searchButton() {
    return GestureDetector(
      onTap: () => showSearch(context: context, delegate: Search()),
      child: Icon(Icons.search),
    );
  }

  AppBar _appBar() {
    return AppBar(
      backgroundColor: Colors.black,
      title: InkWell(
        onTap: () {
          _controller.jumpTo(1);
        },
        child: Text('WHATS UP DOC !'),
      ),
      centerTitle: true,
      actions: <Widget>[
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 15, 0),
          child: _searchButton(),
        )
      ],
      elevation: 0.0,
    );
  }

  Container _doctorImage() {
    return Container(
      height: 80,
      width: 80,
      decoration: BoxDecoration(
        color: Colors.transparent,
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage('images/Doc2.png'),
        ),
      ),
    );
  }

  Widget _ratings() {
    return RatingBarIndicator(
      rating: 2.5, // ratings should be part of the database
      itemCount: 5,
      direction: Axis.horizontal,
      itemSize: 16,
      itemPadding: EdgeInsets.only(right: 0.0),
      itemBuilder: (context, _) {
        return Icon(
          Icons.star,
          color: Color(0xFFFFD700),
        );
      },
    );
  }

  Container _doctorData(String name, String special) {
    return Container(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 10,
          ),
          Text(
            name,
            style: TextStyle(fontSize: 18, fontFamily: 'Comfortaa'),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            special,
            style: TextStyle(
              fontSize: 14,
              fontFamily: 'Comfortaa',
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: GridView.builder(
        controller: _controller,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              //Navigate to details page with data
            },
            child: Card(
              shape: _shape,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 10),
                  _doctorImage(),
                  _ratings(),
                  _doctorData(
                    'Doctor Number ${index + 1}',
                    'Specialization Type ${index + 1}',
                  ),
                ],
              ),
            ),
          );
        },
        itemCount: 10,
      ),
    );
  }
}
