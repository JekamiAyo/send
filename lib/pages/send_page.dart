// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sent/widgets/quick_action.dart';

class SendPage extends StatefulWidget {
  const SendPage({super.key});

  @override
  State<SendPage> createState() => _SendPageState();
}

class _SendPageState extends State<SendPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          //heading
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(
                  width: 50,
                ),
                Text(
                  'Send',
                  style: GoogleFonts.preahvihear(
                      color: const Color(0xff000935),
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.more_horiz),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  const TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      prefixIcon: Icon(Icons.search_rounded),
                      hintText: 'Search',
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(30.0),
                        ),
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 131, 172, 222)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(30.0),
                        ),
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 131, 172, 222)),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ContactShortcut('assets/images/10.png', 'Malik'),
                      ContactShortcut('assets/images/11.png', 'John'),
                      ContactShortcut('assets/images/12.png', 'Ayo'),
                      ContactShortcut('assets/images/13.png', 'Joshua'),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 20,
                    ),
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 52, 99, 239),
                        borderRadius: BorderRadius.circular(20)),
                    child: const Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          width: 80,
                          child: QuickAction(
                            actionText: 'Send to a friend',
                            icon: Icon(
                              Icons.person,
                              color: Color(0xff001146),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 80,
                          child: QuickAction(
                            actionText: 'Send to Bank',
                            icon: Icon(
                              Icons.home_filled,
                              color: Color(0xff001146),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 80,
                          child: QuickAction(
                            actionText: 'Scan',
                            icon: Icon(
                              Icons.qr_code_scanner,
                              color: Color(0xff001146),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget ContactShortcut(String imagePath, String name) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: Image.asset(
            imagePath,
            width: 60,
          ),
        ),
        Text(
          name,
          textAlign: TextAlign.center,
          style: GoogleFonts.preahvihear(
            fontSize: 13,
          ),
        )
      ],
    );
  }
}
