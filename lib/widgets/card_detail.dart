import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class CardDetail extends StatelessWidget {
  const CardDetail({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
        ).copyWith(top: 18),
        decoration: BoxDecoration(
            color: const Color(0xffCFC0FC),
            borderRadius: BorderRadius.circular(20)),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "2588 1246 2563 4586",
                  style: GoogleFonts.aBeeZee(
                    color: Colors.white,
                    fontSize: 23,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 35,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: SvgPicture.asset(
                    'assets/svgs/paypal-icon-logo-svgrepo-com.svg',
                    height: 100,
                  ),
                ),
                Text(
                  "\$24,250.00",
                  style: GoogleFonts.aBeeZee(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
