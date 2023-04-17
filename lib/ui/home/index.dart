import 'package:bananavpn/ui/home/home.dart';
import 'package:flutter/material.dart';

class NavigationMenu extends StatefulWidget {
  const NavigationMenu({Key? key}) : super(key: key);

  @override
  _NavigationMenuState createState() => _NavigationMenuState();
}

class _NavigationMenuState extends State {
  int pageIndex = 0;

  final List _pages = [
    const Center(
      child: HomeScreen(),
    ),
    const Center(
      child: Text("My Events"),
    ),
    Center(
      child: Text("My Events"),
    ),
    const Center(
      child: Text("My Events"),
    )
  ];

  _changeTab(int index) {
    setState(() {
      pageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[pageIndex],
      bottomNavigationBar: buildMyNavBar(context),
    );
  }

  Container buildMyNavBar(BuildContext context) {
    return Container(
      height: 98,
      color: Colors.white,
      // decoration: BoxDecoration(
      //   color: Theme.of(context).primaryColor,
      //   borderRadius: const BorderRadius.only(
      //     topLeft: Radius.circular(20),
      //     topRight: Radius.circular(20),
      //   ),
      // ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              IconButton(
                enableFeedback: false,
                onPressed: () {
                  setState(() {
                    pageIndex = 0;
                  });
                },
                icon: pageIndex == 0
                    ? Image.asset("assets/images/home_active.png")
                    : Image.asset("assets/images/home_unactive.png"),
              ),
              Text(
                "Home",
                style: TextStyle(
                    color: const Color(0xff282828),
                    fontSize: 12,
                    fontWeight:
                        pageIndex == 0 ? FontWeight.bold : FontWeight.normal),
              )
            ],
          ),
          Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              IconButton(
                // enableFeedback: false,
                onPressed: () {
                  setState(() {
                    pageIndex = 1;
                  });
                },
                icon: pageIndex == 1
                    ? Image.asset("assets/images/premium_active.png")
                    : Image.asset("assets/images/premium_unactive.png"),
              ),
              Text(
                "Premium",
                style: TextStyle(
                    color: const Color(0xff282828),
                    fontSize: 12,
                    fontWeight:
                        pageIndex == 1 ? FontWeight.bold : FontWeight.normal),
              )
            ],
          ),
          Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              IconButton(
                // enableFeedback: false,
                onPressed: () {
                  setState(() {
                    pageIndex = 2;
                  });
                },
                icon: pageIndex == 2
                    ? Image.asset("assets/images/statistic_active.png")
                    : Image.asset("assets/images/statistic_unactive.png"),
              ),
              Text(
                "Statistic",
                style: TextStyle(
                    color: const Color(0xff282828),
                    fontSize: 12,
                    fontWeight:
                        pageIndex == 2 ? FontWeight.bold : FontWeight.normal),
              )
            ],
          ),
          Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              IconButton(
                // enableFeedback: false,
                onPressed: () {
                  setState(() {
                    pageIndex = 3;
                  });
                },
                icon: pageIndex == 3
                    ? Image.asset("assets/images/profile_active.png")
                    : Image.asset("assets/images/profile_unactive.png"),
              ),
              Text(
                "Profile",
                style: TextStyle(
                    color: const Color(0xff282828),
                    fontSize: 12,
                    fontWeight:
                        pageIndex == 3 ? FontWeight.bold : FontWeight.normal),
              )
            ],
          )
        ],
      ),
    );
  }
}
