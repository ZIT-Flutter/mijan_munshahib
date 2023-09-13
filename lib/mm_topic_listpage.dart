import 'package:flutter/material.dart';

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
                title: Text(widget.topicList[index].title),
              ))),
    );
  }
}
