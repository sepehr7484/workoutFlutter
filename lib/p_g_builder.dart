import 'package:flutter/material.dart';
import 'package:learning1/tools.dart';

class P_V_Builder extends StatefulWidget {
  P_V_Builder({Key? key}) : super(key: key);

  @override
  State<P_V_Builder> createState() => _P_V_BuilderState();
}

class _P_V_BuilderState extends State<P_V_Builder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black45,
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
              flex: 2,
              child: PageView.builder(
                  itemCount: imgcard.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 2, vertical: 5),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage(imgcard[index])),
                          ),
                        ),
                      ),
                    );
                  })),
          Expanded(
              flex: 4,
              child: Container(
                color: Colors.amber,
              ))
        ],
      ),
    );
  }
}
