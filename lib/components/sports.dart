import 'package:news_boys/components/news_d.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/news.sports.dart';

class Sport extends StatefulWidget {
  const Sport({Key? key}) : super(key: key);

  @override
  _SportState createState() => _SportState();
}

class _SportState extends State<Sport> {
  @override
  void initState() {
    super.initState();
    Provider.of<NewsProvider2>(context, listen: false).getSportNews();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sports News'),
      ),
      body: Consumer<NewsProvider2>(
        builder: (BuildContext context, newsProvider, Widget? child) {
          return newsProvider.isLoading
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : ListView(
                physics: BouncingScrollPhysics(),
                  children: [
                    ...newsProvider.resNews?.articles?.map(
                      (e) => News1(
                        title: e.title ?? '',
                        image: e.urlToImage ?? '',
                      ),
                    ) ?? [],
                  ],
                );
        },
      ),
    );
  }
}
