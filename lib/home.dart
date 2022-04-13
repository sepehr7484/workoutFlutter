import 'package:flutter/material.dart';
import 'package:learning1/pageview.dart';
import 'package:learning1/tools.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: app_bar('Learning', Colors.blueGrey),
      body: Container(
        padding: EdgeInsets.all(10),
        child: GridView.builder(
            itemCount: nameItems.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 4,
              crossAxisSpacing: 4,
            ),
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  print(nameItems.elementAt(index));
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return pageitem[index];
                  }));
                },
                child: Container(
                  decoration: decStyle(),
                  margin: EdgeInsets.all(10),
                  width: 100,
                  height: 150,
                  child: Center(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        urlimg.elementAt(index),
                        width: 80,
                        height: 70,
                      ),
                      Text(
                        nameItems.elementAt(index),
                        style: styletxthome(),
                      ),
                    ],
                  )),
                ),
              );
            }),
      ),
    );
  }
}
