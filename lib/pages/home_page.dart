import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sent/model/expense.dart';
import '../widgets/account_details_card.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

//dummy data
final expensesList = [
  Expense(
    svgUrl: "assets/svgs/iconmonstr-github-1.svg",
    title: "Github",
    date: "Jan 10-12:30 PM",
    price: "-\$ 60.00",
  ),
  Expense(
    svgUrl: "assets/svgs/iconmonstr-amazon-1.svg",
    title: "Amazon",
    date: "Jan 11-12:30 PM",
    price: "-\$ 120.00",
  ),
  Expense(
    svgUrl: "assets/svgs/iconmonstr-school-25.svg",
    title: "School",
    date: "Jul 22-12:30 PM",
    price: "-\$ 600.00",
  ),
  Expense(
    svgUrl: "assets/svgs/iconmonstr-apple-os-1.svg",
    title: "Apple",
    date: "Jan 25-12:30 PM",
    price: "-\$ 50.00",
  ),
];

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        //heading
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset(
                  'assets/images/21.png',
                  width: 45,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10.5),
                decoration: const BoxDecoration(
                    color: Color(0xffFFFFFF), shape: BoxShape.circle),
                child: const Icon(Icons.notifications_outlined),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        //account details widget
        const AccountDetailsCard(),
        const SizedBox(
          height: 25,
        ),
        //expenses section
        Expanded(
          child: Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 20).copyWith(top: 30),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35),
                topRight: Radius.circular(35),
              ),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      'Expenses',
                      style: GoogleFonts.preahvihear(
                          color: const Color(0xff000935),
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                    const Spacer(),
                    Text(
                      'See all',
                      style: GoogleFonts.preahvihear(
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: expensesList.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ListTile(
                              leading:
                                  SvgPicture.asset(expensesList[index].svgUrl),
                              title: Text(
                                expensesList[index].title,
                                style: GoogleFonts.preahvihear(
                                    color: const Color(0xff000935),
                                    fontSize: 17,
                                    fontWeight: FontWeight.w600),
                              ),
                              subtitle: Text(
                                expensesList[index].date,
                                style: GoogleFonts.preahvihear(
                                  color: Colors.grey,
                                  fontSize: 15,
                                ),
                              ),
                              trailing: Text(
                                expensesList[index].price,
                                style: GoogleFonts.preahvihear(
                                  color: const Color(0xff000935),
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ),
                          const Divider(
                              thickness: 0.5,
                              color: Color.fromARGB(255, 209, 212, 215)),
                        ],
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
