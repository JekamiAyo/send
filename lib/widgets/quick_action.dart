import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuickAction extends StatelessWidget {
  final String actionText;
  final Widget icon;
  const QuickAction({super.key, required this.actionText, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.all(16),
          decoration: const BoxDecoration(
              color: Color(0xffFFFFFF), shape: BoxShape.circle),
          child: icon,
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          actionText,
          textAlign: TextAlign.center,
          style: GoogleFonts.preahvihear(
            color: Colors.white,
            fontSize: 13,
          ),
        ),
      ],
    );
  }
}
