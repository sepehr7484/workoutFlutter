import 'package:flutter/material.dart';
import 'package:learning1/tools.dart';
import 'package:badges/badges.dart';

class CallBadge extends StatefulWidget {
  @override
  _CallBadgeState createState() => _CallBadgeState();
}

class _CallBadgeState extends State<CallBadge> {
  int num = 0;

  List<String> lang = [
    'C#',
    'C++',
    'C',
    'Java',
    'Dart',
    'Python',
    'Go',
    'Ruby'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: app_bars1(),
      body: ListView.builder(
          itemCount: lang.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                onTap: () {
                  setState(() {
                    select.add(lang[index]);
                  });
                },
                leading: Text('Book'),
                subtitle: Text(lang[index]),
              ),
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            num++;
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }

  app_bars1() {
    return AppBar(
      actions: [
        Badge(
          animationDuration: Duration(seconds: 1),
          animationType: BadgeAnimationType.scale,
          badgeContent: Text(
            select.length.toString(),
            style: TextStyle(fontSize: 20),
          ),
          badgeColor: Colors.green,
          shape: BadgeShape.circle,
          position: BadgePosition.topStart(),
          child: IconButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return ShowSelect();
              }));
            },
            icon: const Icon(
              Icons.shopping_cart_outlined,
              size: 35,
            ),
          ),
        ),
      ],
    );
  }
}

class ShowSelect extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GridView.builder(
          itemCount: select.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10),
          itemBuilder: (ctx, index) {
            return GestureDetector(
              onTap: () {
                select.remove(select[index]);
              },
              child: Container(
                margin: EdgeInsets.all(10),
                color: Colors.amber,
                child: Center(
                  child: Text(select[index]),
                ),
              ),
            );
          }),
    );
  }
}
