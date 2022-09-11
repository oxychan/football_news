import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ContentPage(),
    );
  }
}

class ContentPage extends StatelessWidget {
  ContentPage({Key? key}) : super(key: key);

  TabBar tabbar = const TabBar(
    labelColor: Colors.black,
    indicatorColor: Colors.black,
    tabs: <Widget>[
      Tab(
        icon: Icon(Icons.newspaper),
        text: "News",
      ),
      Tab(
        icon: Icon(Icons.schedule),
        text: "Schedule",
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Football News"),
          bottom: PreferredSize(
              preferredSize: Size.fromHeight(tabbar.preferredSize.height),
              child: Container(color: Colors.grey[200], child: tabbar)),
        ),
        body: const TabBarView(children: <Widget>[
          // news
          NewsContent(),
          // schedule
          Text("dua nich")
        ]),
      ),
    );
  }
}

class NewsContent extends StatelessWidget {
  const NewsContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: [
            Flexible(
              flex: 1,
              child: Container(
                color: Colors.red,
              ),
            )
          ],
        )
      ],
    );
  }
}
