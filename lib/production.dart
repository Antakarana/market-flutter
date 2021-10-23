import 'package:flutter/material.dart';
import 'package:fmarket/category.dart';

class Production extends StatefulWidget {
  @override
  _ProductionState createState() => _ProductionState();
}

class _ProductionState extends State<Production>
    with SingleTickerProviderStateMixin {
  TabController myTabController;

  @override
  void initState() {
    super.initState();
    myTabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          controller: myTabController,
          indicatorColor: Colors.red[400],
          labelColor: Colors.red[400],
          unselectedLabelColor: Colors.grey,
          isScrollable: true,
          labelStyle: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w500),
          tabs: [
            Tab(child: Text("Temel Gida")),
            Tab(child: Text("Sekerleme")),
            Tab(child: Text("Icecekler")),
            Tab(child: Text("Temizlik")),
          ],
        ),
        Expanded(
          child: TabBarView(
            controller: myTabController,
            children: [
              Category(category: "temel gida"),
              Category(category: "sekerleme"),
              Category(category: "icecekler"),
              Category(category: "temizlik"),
            ],
          ),
        )
      ],
    );
  }
}
