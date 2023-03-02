import 'package:flutter/material.dart';
import 'package:uitutorials/utilities/emoticons.dart';
import 'package:uitutorials/utilities/exercise_tiles.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.message), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: '')
          ],
        ),
        backgroundColor: Colors.blue[700],
        body: SafeArea(
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                children: [
                  // Greetings part
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // hi jared
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            'Hi, John  !',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            '24 Feb, 2022',
                            style: TextStyle(color: Colors.blue[200]),
                          )
                        ],
                      ),
                      //notigication
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.blue[500],
                        ),
                        padding: const EdgeInsets.all(8),
                        child: const Icon(
                          Icons.notifications,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  // search
                  Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                        color: Colors.blue[600],
                        borderRadius: BorderRadius.circular(12)),
                    child: Row(
                      children: const [
                        Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Search',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'How do you feel ? ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(
                        Icons.more_horiz,
                        color: Colors.white,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  // MooDS
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // happy
                      Column(
                        children: const [
                          EmoticonFace(
                            emoji: '😊',
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Happy',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),

                      //sad
                      Column(
                        children: const [
                          EmoticonFace(
                            emoji: '😍',
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Loving',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                      //anger
                      Column(
                        children: const [
                          EmoticonFace(
                            emoji: '😒',
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Dull',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                      //hate
                      Column(
                        children: const [
                          EmoticonFace(
                            emoji: '😢',
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Sad',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 245, 245, 245),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
                ),
                padding: EdgeInsets.all(25),
                child: Center(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Exercises',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Icon(Icons.more_horiz),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Expanded(
                        child: ListView(
                          children: const [
                            MyExercise(
                              icon: Icon(
                                Icons.favorite,
                                color: Colors.white,
                              ),
                              exername: 'Speaking Skills',
                              noOfExer: 20,
                              color: Colors.orange,
                            ),
                            MyExercise(
                              icon: Icon(
                                Icons.menu_book,
                                color: Colors.white,
                              ),
                              exername: 'Reading Skills',
                              noOfExer: 16,
                              color: Colors.pink,
                            ),
                            MyExercise(
                              icon: Icon(
                                Icons.star,
                                color: Colors.white,
                              ),
                              exername: 'Writing skills',
                              noOfExer: 14,
                              color: Colors.green,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ]),
        ));
  }
}
