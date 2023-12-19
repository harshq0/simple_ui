import 'package:dribbble_ui/components/text_field.dart';
import 'package:dribbble_ui/util/emoji_face.dart';
import 'package:dribbble_ui/util/excercise.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[700],
      bottomNavigationBar: const GNav(
        curve: Curves.easeOutExpo,
        tabBorderRadius: 15,
        activeColor: Colors.black,
        color: Colors.white,
        duration: Duration(milliseconds: 300),
        tabs: [
          GButton(icon: Icons.home),
          GButton(icon: Icons.mail),
          GButton(icon: Icons.person),
        ],
      ),
      body: SafeArea(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //Text
                    Column(
                      children: [
                        Text(
                          'Hi, Max!',
                          style: GoogleFonts.outfit(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        Text(
                          '19 Dec, 2023',
                          style: GoogleFonts.outfit(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),

                    //notification
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: const EdgeInsets.all(14),
                      child: const Icon(
                        Icons.notifications_active,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),

                //search Bar
                const MyTextField(),

                const SizedBox(
                  height: 25,
                ),

                //how do you feel?

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'How do you feel?',
                      style: GoogleFonts.outfit(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    ),
                    const Icon(
                      Icons.more,
                      color: Colors.white,
                    ),
                  ],
                ),

                const SizedBox(
                  height: 25,
                ),

                //4 different Emoji
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    //bad
                    Column(
                      children: [
                        const MyEmoji(emoticonFace: '😫'),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Bad',
                          style: GoogleFonts.outfit(color: Colors.white),
                        ),
                      ],
                    ),

                    //average
                    Column(
                      children: [
                        const MyEmoji(emoticonFace: '🙂'),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Average',
                          style: GoogleFonts.outfit(color: Colors.white),
                        ),
                      ],
                    ),

                    //good
                    Column(
                      children: [
                        const MyEmoji(emoticonFace: '😀'),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Good',
                          style: GoogleFonts.outfit(color: Colors.white),
                        ),
                      ],
                    ),

                    //Excellent
                    Column(
                      children: [
                        const MyEmoji(emoticonFace: '😎'),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Excellent',
                          style: GoogleFonts.outfit(color: Colors.white),
                        ),
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
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Exercises',
                        style: GoogleFonts.outfit(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Icon(Icons.more_horiz),
                    ],
                  ),

                  const SizedBox(
                    height: 20,
                  ),

                  //listview
                  Expanded(
                    child: ListView(
                      children: const [
                        ExerciseTile(
                          icon: Icons.favorite,
                          text: 'Reading',
                          numberOfExercise: 8,
                          color: Colors.orange,
                        ),
                        ExerciseTile(
                          icon: Icons.star,
                          text: 'Writing',
                          numberOfExercise: 12,
                          color: Colors.blueGrey,
                        ),
                        ExerciseTile(
                          icon: Icons.person,
                          text: 'Speaking',
                          numberOfExercise: 16,
                          color: Colors.pinkAccent,
                        ),
                        ExerciseTile(
                          icon: Icons.note,
                          text: 'Preparation',
                          numberOfExercise: 16,
                          color: Colors.green,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}
