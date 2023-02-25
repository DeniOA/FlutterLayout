import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}


class Home extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFeeedf2),
      body: ListView(
        children: [
          Container(
            child: Column(
              children: [
                // const Gap(20)
                Row(
                  children: [
                    const Icon(Icons.search),
                    Text(
                      "Where to?",
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    Image.asset("images/filter.png"),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );

  }
}

// bottomNavigationBar: BottomNavigationBar(
//   selectedItemColor: Colors.pink,
//   unselectedItemColor: Colors.black87,
//   showUnselectedLabels: true,
//   items: const [
//     BottomNavigationBarItem(label:'Explore',icon: ImageIcon(AssetImage('images/search.png'))),
//     BottomNavigationBarItem(label:'Wishlist',icon: ImageIcon(AssetImage('images/wishlists.png'))),
//     BottomNavigationBarItem(label:'Trips',icon: ImageIcon(AssetImage('images/trips.png'))),
//     BottomNavigationBarItem(label:'Inbox',icon: ImageIcon(AssetImage('images/inbox.png'))),
//     BottomNavigationBarItem(label:'Profile',icon: ImageIcon(AssetImage('images/profile.png'))),
//   ],
// ),


