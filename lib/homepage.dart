import 'package:flutter/material.dart';
import 'package:mizan_munshaib/data/topic_list_data.dart';
import 'package:mizan_munshaib/mm_topic_listpage.dart';

import 'widgets/main_topic_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Mijan Munshahib')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                height: 200,
                child: Image.network(
                    'https://ds.rokomari.store/rokomari110/ProductNew20190903/260X372/Mizanusorof_o_Munshaib_Mizan-Islamia_Kutubkhana-a0ad3-236996.jpg'),
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MainTopicButton(
                    title: 'Mijan',
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TopicListPage(
                                    topicList: mijanList,
                                  )));
                    },
                  ),
                  MainTopicButton(
                    title: 'Munshahib',
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TopicListPage(
                                    topicList: munshahibList,
                                  )));
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
