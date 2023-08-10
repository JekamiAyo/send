import 'package:flutter/material.dart';
import 'package:sent/pages/balance_review_page.dart';
import 'package:sent/pages/extra.dart';
import 'package:sent/pages/home_page.dart';
import 'package:sent/pages/send_page.dart';
import 'package:sent/pages/wallet_page.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  int currentPage = 0;
  List<Widget> pages = [
    const HomePage(),
    const WalletPage(),
    const SendPage(),
    const BalanceReviewPage(),
    const ExtraPage()
  ];

  void togglePages(index) {
    setState(() {
      currentPage = index;
    }); // this will rebuild the widget and call initState again, so we can change
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        //to unfocus from textfields
        FocusScopeNode currentFocus = FocusScope.of(context);

        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 215, 229, 247),
        body: SafeArea(
          child: pages[currentPage],
        ),
        bottomNavigationBar: Container(
          color: currentPage == 0 ? Colors.white : Colors.transparent,
          child: Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  offset: const Offset(0, -1),
                  blurRadius: 5,
                  spreadRadius: 2,
                )
              ],
              color: Colors.white,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            height: 90,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //home
                  IconButton(
                    padding: const EdgeInsets.all(20).copyWith(top: 10),
                    onPressed: () {
                      togglePages(0);
                    },
                    icon: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(Icons.home_outlined),
                        Container(
                          height: 2,
                          width: 13,
                          decoration: BoxDecoration(
                            color: currentPage == 0
                                ? const Color.fromARGB(255, 79, 121, 238)
                                : Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ],
                    ),
                  ),

                  //wallet
                  IconButton(
                    padding: const EdgeInsets.all(20).copyWith(top: 10),
                    onPressed: () {
                      togglePages(1);
                    },
                    icon: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(Icons.wallet_outlined),
                        Container(
                          height: 2,
                          width: 13,
                          decoration: BoxDecoration(
                            color: currentPage == 1
                                ? const Color.fromARGB(255, 79, 121, 238)
                                : Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ],
                    ),
                  ),

                  //send/transfer
                  IconButton(
                    padding: const EdgeInsets.all(20).copyWith(top: 10),
                    onPressed: () {
                      togglePages(2);
                    },
                    icon: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Transform.rotate(
                          angle: 1.57,
                          child: const Icon(Icons.compare_arrows_rounded),
                        ),
                        Container(
                          height: 2,
                          width: 13,
                          decoration: BoxDecoration(
                            color: currentPage == 2
                                ? const Color.fromARGB(255, 79, 121, 238)
                                : Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ],
                    ),
                  ),

                  //review
                  IconButton(
                    padding: const EdgeInsets.all(20).copyWith(top: 10),
                    onPressed: () {
                      togglePages(3);
                    },
                    icon: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(Icons.star_border_rounded),
                        Container(
                          height: 2,
                          width: 13,
                          decoration: BoxDecoration(
                            color: currentPage == 3
                                ? const Color.fromARGB(255, 79, 121, 238)
                                : Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ],
                    ),
                  ),

                  //account
                  IconButton(
                    padding: const EdgeInsets.all(20).copyWith(top: 10),
                    onPressed: () {
                      togglePages(4);
                    },
                    icon: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(Icons.home_max_outlined),
                        Container(
                          height: 2,
                          width: 13,
                          decoration: BoxDecoration(
                            color: currentPage == 4
                                ? const Color.fromARGB(255, 79, 121, 238)
                                : Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
