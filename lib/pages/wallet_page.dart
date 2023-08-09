import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/card_detail.dart';

class WalletPage extends StatefulWidget {
  const WalletPage({super.key});

  @override
  State<WalletPage> createState() => _WalletPageState();
}

class _WalletPageState extends State<WalletPage> {
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
                  'Card Details',
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
          const SizedBox(
            height: 30,
          ),
          Text(
            "Wallet balance",
            style: GoogleFonts.preahvihear(
                color: const Color(0xff000935), fontSize: 15),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "\$24,250.00",
                style: GoogleFonts.aBeeZee(
                    color: const Color(0xff000935),
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                " USD",
                style: GoogleFonts.aBeeZee(
                    color: const Color(0xff000935), fontSize: 30),
              ),
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          const CardDetail(),
          const SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: DottedBorder(
              strokeWidth: 1.5,
              color: const Color.fromARGB(255, 79, 121, 238),
              borderType: BorderType.RRect,
              radius: const Radius.circular(20),
              dashPattern: const [10, 6],
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.add,
                      color: Color.fromARGB(255, 79, 121, 238),
                    ),
                    Text(
                      "Add New Card",
                      style: GoogleFonts.aBeeZee(
                        color: const Color.fromARGB(255, 79, 121, 238),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
