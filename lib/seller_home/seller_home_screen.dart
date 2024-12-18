import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:onboard/customizablewidgets/custom_elevated_button.dart';
import 'package:onboard/customizablewidgets/custom_textbutton.dart';
import 'package:onboard/seller_home/seller_home_list.dart';
import 'package:onboard/seller_home/seller_home_tabs.dart';

class SellerHomeScreen extends StatefulWidget {
  @override
  State<SellerHomeScreen> createState() => _SellerHomeScreenState();
}

class _SellerHomeScreenState extends State<SellerHomeScreen>
    with TickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      key: _scaffoldKey,
      drawer: Drawer(
        backgroundColor: const Color.fromRGBO(118, 151, 104, 1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/logo.png',
            ),
            CustomTextbutton(
              label: 'Profile Settings',
              onSelectDrawerButtons: () {
                context.replace('/HomeScreen/setting');
              },
              fontWeight: FontWeight.w600,
              fontSize: 16,
              color: const Color.fromRGBO(255, 255, 255, 1),
            ),
            CustomTextbutton(
              label: 'Terms & Conditions',
              onSelectDrawerButtons: () {},
              fontWeight: FontWeight.w600,
              fontSize: 16,
              color: const Color.fromRGBO(255, 255, 255, 1),
            ),
            CustomTextbutton(
              label: 'Help & Support',
              onSelectDrawerButtons: () {},
              fontWeight: FontWeight.w600,
              fontSize: 16,
              color: const Color.fromRGBO(255, 255, 255, 1),
            ),
            CustomTextbutton(
              label: 'About Us',
              onSelectDrawerButtons: () {},
              fontWeight: FontWeight.w600,
              fontSize: 16,
              color: const Color.fromRGBO(255, 255, 255, 1),
            ),
            CustomTextbutton(
              label: 'Logout',
              onSelectDrawerButtons: () {},
              fontWeight: FontWeight.w600,
              fontSize: 16,
              color: const Color.fromRGBO(255, 255, 255, 1),
            ),
            const SizedBox(
              height: 200,
            ),
            CustomElevatedButton(
              label: 'Switch To Buyer',
              onSelection: () {},
              backgroundColor: Colors.white,
              foregroundColor: Colors.black,
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          // Header Container
          Positioned(
            top: 0,
            right: 0,
            left: 0,
            child: Container(
              height: 170,
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 194, 189, 189),
                    blurRadius: 5,
                    spreadRadius: 5,
                  ),
                ],
                color: Color.fromRGBO(118, 151, 104, 1),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 40),
                  // Header Row
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            IconButton(
                              onPressed: () {
                                _scaffoldKey.currentState?.openDrawer();
                              },
                              icon: const FaIcon(
                                FontAwesomeIcons.navicon,
                                color: Colors.white,
                                size: 25,
                              ),
                            ),
                            const Text(
                              'Na Ryneczku',
                              style: TextStyle(
                                fontWeight: FontWeight.w900,
                                color: Colors.white,
                                fontSize: 25,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: const FaIcon(
                                FontAwesomeIcons.bell,
                                color: Colors.white,
                                size: 25,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const FaIcon(
                                FontAwesomeIcons.mailBulk,
                                color: Colors.white,
                                size: 25,
                              ),
                            ),
                            Image.asset(
                              'assets/images/bie-icon.png',
                              width: 20,
                              height: 30,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Padding(
                    padding: EdgeInsets.only(left: 25),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Welcome John',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(221, 221, 221, 1),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Positioned(
            top: 190,
            left: 0,
            right: 0,
            child: Padding(
              padding: EdgeInsets.only(left: 20),
              child: SizedBox(
                child: Text(
                  'Your Offers',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          Positioned(
            top: 220,
            left: 0,
            right: 0,
            child: SizedBox(
              child: Tabs(
                tabController: _tabController,
              ),
            ),
          ),

          // Home List Section
          Positioned(
            top: 260,
            left: 0,
            right: 0,
            child: SizedBox(
              height: MediaQuery.of(context).size.height - 260,
              child: TabBarView(
                controller: _tabController,
                children: [
                  ListView.builder(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return const Padding(
                        padding: EdgeInsets.symmetric(vertical: 8.0),
                        child: HomeList(),
                      );
                    },
                  ),
                  ListView.builder(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return const Padding(
                        padding: EdgeInsets.symmetric(vertical: 8.0),
                        child: HomeList(),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: SizedBox(
              child: Padding(
                padding: const EdgeInsets.all(30),
                child: IconButton(
                  style: IconButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(135, 99, 49, 1)),
                  onPressed: () {
                    context.go(
                      '/HomeScreen/salesdetail',
                    );
                  },
                  icon: const FaIcon(
                    FontAwesomeIcons.plus,
                    color: Colors.white,
                    size: 40,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
