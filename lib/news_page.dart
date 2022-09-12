import 'package:flutter/material.dart';
import 'package:football_news/detail_news.dart';
import './news.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({Key? key, required this.newsDatas}) : super(key: key);

  final List<News> newsDatas;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: newsDatas.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailNews(newsData: newsDatas[index]),
              ),
            );
          },
          child: Container(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 5.0),
            height: (index == 0)
                ? MediaQuery.of(context).size.height / 2
                : MediaQuery.of(context).size.height / 4,
            child: Card(
              child: (index > 0)
                  ? Row(
                      children: [
                        Flexible(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Image(
                              image:
                                  AssetImage(newsDatas[index].image.toString()),
                              fit: BoxFit.cover,
                              height: MediaQuery.of(context).size.height / 6,
                              width: MediaQuery.of(context).size.height / 3,
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 25, right: 5),
                                child: Text(
                                  newsDatas[index].title.toString(),
                                  style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  padding: const EdgeInsets.only(
                                      top: 15, bottom: 10),
                                  child: const Text(
                                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris eu..."),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 15),
                                child: Text(
                                  newsDatas[index].postDate.toString(),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    )
                  : Column(
                      children: [
                        Flexible(
                          flex: 2,
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Image(
                              image: AssetImage(
                                newsDatas[index].image.toString(),
                              ),
                              fit: BoxFit.cover,
                              width: double.infinity,
                              height: double.infinity,
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(15),
                                child: Text(
                                  newsDatas[index].title.toString(),
                                  style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(15),
                                child: Text(
                                  newsDatas[index].postDate.toString(),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
            ),
          ),
        );
      },
    );
  }
}
