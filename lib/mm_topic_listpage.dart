import 'package:flutter/material.dart';
import 'package:mizan_munshaib/details_page.dart';

import 'data/topic_list_data.dart';

class TopicListPage extends StatefulWidget {
  final List<Topic> topicList;
  TopicListPage({super.key, required this.topicList});

  @override
  State<TopicListPage> createState() => _TopicListPageState();
}

class _TopicListPageState extends State<TopicListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
          shrinkWrap: true,
          itemCount: widget.topicList.length,
          itemBuilder: ((context, index) => ListTile(
                leading: Image.network(
                    'https://mir-s3-cdn-cf.behance.net/projects/404/2aab62116359085.6060a7c2c5655.png'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              DetailsPage(topic: widget.topicList[index])));
                },
                title: Text(widget.topicList[index].title),
              ))),
    );
  }
}
