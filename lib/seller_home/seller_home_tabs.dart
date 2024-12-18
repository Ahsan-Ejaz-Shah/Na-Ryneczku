import 'package:flutter/material.dart';

class Tabs extends StatelessWidget {
  final TabController tabController;

  const Tabs({super.key, required this.tabController}); // Proper field initialization
  
  @override
  Widget build(BuildContext context) {
    return TabBar(
      controller: tabController,
      dividerColor: Colors.transparent,
      labelColor: Colors.black,
      unselectedLabelColor: Colors.grey,
      indicatorColor: Colors.black,
      tabs: const [
        Tab(
          child: Text(
            'Active',
            style: TextStyle(fontSize: 16),
          ),
        ),
        Tab(
          child: Text(
            'Inactive',
            style: TextStyle(fontSize: 16),
          ),
        ),
      ],
    );
  }
}
