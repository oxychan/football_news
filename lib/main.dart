import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  final TabBar tabbar = const TabBar(
    indicatorColor: Colors.black,
    labelColor: Colors.black,
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
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Football News"),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(tabbar.preferredSize.height),
              child: Container(
                color: Colors.grey[200],
                child: tabbar,
              ),
            ),
          ),
          body: Container(
            child: NewsPage(),
          ),
        ),
      ),
    );
  }
}

class NewsPage extends StatelessWidget {
  const NewsPage({Key? key}) : super(key: key);

  static List bulan = [
    'januari',
    'februari',
    'maret',
    'april',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: bulan.length,
      itemBuilder: (context, index) {
        return Container(
          padding: const EdgeInsets.all(8),
          height: (index == 0)
              ? MediaQuery.of(context).size.height / 2
              : MediaQuery.of(context).size.height / 4,
          child: Card(
            child: (index > 0)
                ? Row(
                    children: [
                      const Flexible(
                        flex: 1,
                        child: Image(
                          image: AssetImage('assets/wlp.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Padding(
                              padding: EdgeInsets.all(8),
                              child: Text("title"),
                            ),
                            Expanded(child: SizedBox()),
                            Padding(
                                padding: EdgeInsets.all(8),
                                child: Text("July, 20-10-22")),
                          ],
                        ),
                      )
                    ],
                  )
                : Column(
                    children: [],
                  ),
          ),
        );
      },
    );
  }
}
