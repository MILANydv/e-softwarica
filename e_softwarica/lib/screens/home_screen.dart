import 'package:e_softwarica/models/post_models.dart';
import 'package:flutter/material.dart';

import '../models/stories_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    List<Stories> stories = [
      Stories(
          name: 'Milan',
          image: 'https://financesonline.com/uploads/2017/10/ev.jpg'),
      Stories(
          name: 'Milan',
          image: 'https://financesonline.com/uploads/2017/10/ev.jpg'),
      Stories(
          name: 'Milan',
          image: 'https://financesonline.com/uploads/2017/10/ev.jpg'),
      Stories(
          name: 'Milan',
          image: 'https://financesonline.com/uploads/2017/10/ev.jpg'),
    ];

    List<Posts> posts = [
      Posts(
          name: 'Milan',
          image: 'https://financesonline.com/uploads/2017/10/ev.jpg'),
      Posts(
          name: 'Milan',
          image: 'https://financesonline.com/uploads/2017/10/ev.jpg'),
      Posts(
          name: 'Milan',
          image: 'https://financesonline.com/uploads/2017/10/ev.jpg'),
      Posts(
          name: 'Milan',
          image: 'https://financesonline.com/uploads/2017/10/ev.jpg'),
    ];

    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('e-softwarica'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Column(
              children: [
                Row(
                  children: [
                    ...stories
                        .map((stories) => displayStories(stories))
                        .toList(),
                  ],
                ),
                const Divider(
                  thickness: 5,
                ),
                // ...posts.map((posts) => displayPosts(posts)).toList(),
              ],
            ),
          ),
        ));
  }
}

Widget displayStories(Stories stories) {
  return SizedBox(
    height: 300,
    width: 200,
    child: Builder(builder: (context) {
      return Card(
        elevation: 5,
        color: const Color.fromARGB(255, 14, 13, 49),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
                height: 100,
                width: double.infinity,
                child: Image.network(stories.image)),
            Text(
              "${stories.name}",
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ],
        ),
      );
    }),
  );
}

Widget displayPosts(Posts posts) {
  return SizedBox(
    height: 400,
    width: double.infinity,
    child: Builder(builder: (context) {
      return Card(
        elevation: 5,
        color: const Color.fromARGB(255, 14, 13, 49),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
                height: 100,
                width: double.infinity,
                child: Image.network(posts.image)),
            Text(
              "${posts.name}",
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ],
        ),
      );
    }),
  );
}
