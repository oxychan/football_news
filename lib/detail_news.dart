import 'package:flutter/material.dart';
import 'package:football_news/news.dart';

class DetailNews extends StatelessWidget {
  const DetailNews({Key? key, required this.newsData}) : super(key: key);

  final News newsData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(newsData.title.toString()),
        backgroundColor: Colors.red,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 15),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 3,
              child: Image(
                image: AssetImage(
                  newsData.image.toString(),
                ),
                fit: BoxFit.cover,
              ),
            ),
            Text(
              newsData.title.toString(),
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              children: [
                const Expanded(
                  child: SizedBox(),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Text(
                    newsData.postDate.toString(),
                  ),
                ),
              ],
            ),
            const Divider(
              color: Colors.black,
            ),
            Text(
              newsData.content.toString(),
              style: const TextStyle(fontSize: 16),
            )
          ],
        ),
      ),
    );
  }
}
