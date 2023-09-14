import 'package:flutter/material.dart';
import 'package:mizan_munshaib/data/topic_list_data.dart';

class DetailsPage extends StatelessWidget {
  final Topic topic;
  const DetailsPage({
    super.key,
    required this.topic,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(topic.title),
      )),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Text(
              topic.details,
            )),
      )),
    );
  }
}
