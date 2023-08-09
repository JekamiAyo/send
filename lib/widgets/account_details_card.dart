
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sent/widgets/quick_action.dart';

class AccountDetailsCard extends StatelessWidget {
  const AccountDetailsCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 18),
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 52, 99, 239),
            borderRadius: BorderRadius.circular(20)),
        child: Column(
          children: [
            Text(
              "Available balance",
              style: GoogleFonts.preahvihear(
                  color: Colors.white, fontSize: 12),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "\$10,550.00",
              style: GoogleFonts.aBeeZee(color: Colors.white, fontSize: 30),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              width: 100,
              padding:
                  const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
              decoration: BoxDecoration(
                  color: const Color(0xff4C71DF),
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Overview ",
                    style: GoogleFonts.preahvihear(
                        color: Colors.white, fontSize: 12),
                  ),
                  const Flexible(
                    child: Icon(
                      Icons.compare_arrows,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(color: Color.fromARGB(255, 115, 161, 216)),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                QuickAction(
                  icon: Transform.rotate(
                    angle: 0.6,
                    child: const Icon(
                      Icons.arrow_upward_rounded,
                      color: Color(0xff001146),
                    ),
                  ),
                  actionText: "Send",
                ),
                QuickAction(
                  icon: Transform.rotate(
                    angle: 3.6,
                    child: const Icon(
                      Icons.arrow_upward_rounded,
                      color: Color(0xff001146),
                    ),
                  ),
                  actionText: "Request",
                ),
                const QuickAction(
                  icon: Icon(
                    Icons.money_rounded,
                    color: Color(0xff001146),
                  ),
                  actionText: "Income",
                ),
                const QuickAction(
                  icon: Icon(
                    Icons.menu_rounded,
                    color: Color(0xff001146),
                  ),
                  actionText: "More",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
