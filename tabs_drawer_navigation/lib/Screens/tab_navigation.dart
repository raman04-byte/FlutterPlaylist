import 'package:flutter/material.dart';

class TabNavigation extends StatefulWidget {
  const TabNavigation({super.key});

  @override
  State<TabNavigation> createState() => _TabNavigationState();
}

class _TabNavigationState extends State<TabNavigation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
          length: 3,
          child: Builder(builder: (BuildContext context) {
            final TabController tabController =
                DefaultTabController.of(context);
            tabController.addListener(() {
              if (!tabController.indexIsChanging) {
              }
            });
            return Scaffold(
              appBar: AppBar(
                title: const Text('Tab Navigation'),
                bottom: const TabBar(
                  tabs: [
                    Tab(icon: Icon(Icons.directions_car)),
                    Tab(icon: Icon(Icons.directions_transit)),
                    Tab(icon: Icon(Icons.directions_bike)),
                  ],
                ),
              ),
              body: const TabBarView(
                children: [
                  Center(
                    child: Text("Car"),
                  ),
                  Center(
                    child: Text("Transit"),
                  ),
                  Center(
                    child: Text("Bike"),
                  ),
                ],
              ),
            );
          })),
    );
  }
}
