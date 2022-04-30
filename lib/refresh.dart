import 'package:flutter/material.dart';
import 'package:learning1/tools.dart';

class Refreshing extends StatefulWidget {
  Refreshing({Key? key}) : super(key: key);

  @override
  State<Refreshing> createState() => _RefreshingState();
}

class _RefreshingState extends State<Refreshing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Refresh'),
      ),
      body: RefreshIndicator(
        triggerMode: RefreshIndicatorTriggerMode.onEdge,
        // edgeOffset: 50,
        //  displacement: 100,
        strokeWidth: 5,
        backgroundColor: Colors.blue[300],
        color: Colors.red,
        onRefresh: refresh,
        child: ListView.builder(
            itemCount: languge.length,
            itemBuilder: (ctx, index) {
              return Card(
                margin: EdgeInsets.all(10),
                child: Text(
                  languge[index],
                  style: TextStyle(fontSize: 25, color: Colors.teal),
                ),
              );
            }),
      ),
    );
  }

  Future<void> refresh() {
    return Future.delayed(const Duration(milliseconds: 8000));
  }
}
