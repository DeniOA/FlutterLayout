import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        //ensures content doesn't overflow outside the scaffold
          child: SingleChildScrollView(
            child: Column(
              children: [
                buildSearchComponent()
              ],
            ),
          )
      ),

    );

  }

  Container buildSearchComponent() {
    return Container(
                height: 50,
                margin: const EdgeInsets.all(16),
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(color: const Color(0xFFDEDEDE), width: 0.5),
                ),
                child: Row(
                  children: [
                    IconButton(onPressed: (){{}}, icon: const Icon(Icons.search)),
                    Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text("Where to?",
                            style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text("Anywhere . Anyweek . Any dates",
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                    ),
                    Container(
                      alignment: Alignment.bottomCenter,
                      height: 36,
                      width: 36,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: const Color(0xFFDEDEDE), width: 0.5)),
                      child: Center(
                        child: IconButton(onPressed: (){{}}, icon: const Icon(Icons.settings), iconSize: 28),
                      ),

                    )
                  ],
                ),
              );
  }
}
