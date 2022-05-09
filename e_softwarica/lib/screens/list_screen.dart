import 'package:flutter/material.dart';

import '../models/post_models.dart';
import '../models/stories_model.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({Key? key}) : super(key: key);

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  @override
  Widget build(BuildContext context) {
    List<Stories> stories = [
      Stories(
          name: 'Milan',
          image:
              'https://resources.premierleague.com/photos/2022/02/11/b131e212-5275-4ed4-8a9a-937a746d6cd3/ronaldo.png?width=930&height=620'),
      Stories(
          name: 'Milan',
          image:
              'https://s.yimg.com/ny/api/res/1.2/_GElBXfitW41.FFicQykMg--/YXBwaWQ9aGlnaGxhbmRlcjt3PTY0MDtoPTQ2MA--/https://s.yimg.com/os/creatr-uploaded-images/2022-04/1d0497b0-bf4d-11ec-b592-a2a6637020c2'),
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
          image:
              'https://resources.premierleague.com/photos/2022/02/11/b131e212-5275-4ed4-8a9a-937a746d6cd3/ronaldo.png?width=930&height=620'),
      Posts(
          name: 'Milan',
          image:
              'https://s.yimg.com/ny/api/res/1.2/_GElBXfitW41.FFicQykMg--/YXBwaWQ9aGlnaGxhbmRlcjt3PTY0MDtoPTQ2MA--/https://s.yimg.com/os/creatr-uploaded-images/2022-04/1d0497b0-bf4d-11ec-b592-a2a6637020c2'),
      Posts(
          name: 'Milan',
          image: 'https://financesonline.com/uploads/2017/10/ev.jpg'),
      Posts(
          name: 'Milan',
          image: 'https://financesonline.com/uploads/2017/10/ev.jpg'),
    ];
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: stories.length,
                itemBuilder: (context, index) {
                  return displayStories(stories[index]);
                }),
          ),
          const Divider(
            thickness: 5,
          ),
          Expanded(
            flex: 2,
            child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: posts.length,
                itemBuilder: (context, index) {
                  return displayPosts(posts[index]);
                }),
          )
        ],
      ),
    ));
  }
}

Widget displayStories(Stories stories) {
  return Container(
    margin: const EdgeInsets.all(10),
    width: 150,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      image: DecorationImage(
        image: NetworkImage(stories.image),
        fit: BoxFit.cover,
      ),
    ),
  );
}

Widget displayPosts(Posts posts) {
  return Container(
    margin: const EdgeInsets.all(10),
    decoration: BoxDecoration(
      border: Border.all(color: Colors.grey, width: 2),
      borderRadius: BorderRadius.circular(10),
    ),
    width: double.infinity,
    child: Column(
      children: [
        ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(posts.image),
          ),
          title: Text("${posts.name}"),
        ),
        Container(
          margin: const EdgeInsets.all(10),
          width: 400,
          height: 400,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: NetworkImage(posts.image),
              fit: BoxFit.cover,
            ),
          ),
        ),
        ListTile(
          leading: IconButton(
            icon: const Icon(Icons.favorite),
            onPressed: () {},
          ),
          trailing: IconButton(
            icon: const Icon(Icons.comment_outlined),
            onPressed: () {},
          ),
        ),
      ],
    ),
  );
}
