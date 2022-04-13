import 'package:flutter/material.dart';
import 'package:learning1/home.dart';

class Pageview1 extends StatefulWidget {
  Pageview1({Key? key}) : super(key: key);

  @override
  State<Pageview1> createState() => _Pageview1State();
}

class _Pageview1State extends State<Pageview1> {
  int pageChange = 0;
  PageController pagectrl = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              pagectrl.animateToPage(--pageChange,
                  duration: Duration(seconds: 1), curve: Curves.bounceInOut);
            },
            icon: Icon(Icons.arrow_back_ios),
          ),
          IconButton(
            onPressed: () {
              pagectrl.animateToPage(++pageChange,
                  duration: Duration(seconds: 1), curve: Curves.easeInCirc);
            },
            icon: Icon(Icons.arrow_forward_ios),
          )
        ],
      ),
      body: Column(children: [
        Expanded(
          flex: 2,
          child: PageView(
            onPageChanged: (value) {
              setState(() {
                pageChange = value;
              });
              print(pageChange);
              switch (pageChange) {
                case 0:
                  print('one');
                  break;
                case 1:
                  print('two');
                  break;
                case 2:
                  print('tree');

                  break;
                default:
                  print('other');
                  break;
              }
            },
            controller: pagectrl,
            pageSnapping: true,
            children: [
              Container(
                color: Colors.green,
                child: Center(
                  child: ElevatedButton(onPressed: () {}, child: Text('data')),
                ),
              ),
              Container(
                color: Colors.red,
              ),
              Container(
                color: Colors.blue,
              )
            ],
          ),
        ),
        Expanded(flex: 6, child: Container())
      ]),
    );
  }
}
