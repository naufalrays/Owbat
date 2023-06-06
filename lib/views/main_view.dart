import 'package:flutter/material.dart';
import 'package:meddis/view_models/main_provider.dart';
import 'package:meddis/views/utils/color.dart';
import 'package:provider/provider.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<MainProvider>(builder: (context, data, _) {
      return Scaffold(
        body: data.body[data.index],
        backgroundColor: const Color(0xFFF5F5F5),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: const Color(0xFFFFFFFF),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(32),
            ),
          ),
          child: Image.asset("assets/images/drug_scan.png", height: 32),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          surfaceTintColor: const Color(0xFFFFFFFF),
          notchMargin: 9.0,
          shape: const CircularNotchedRectangle(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              // const Icon(Icons.percent),
              IconButton(
                // splashColor: Colors.transparent,
                // highlightColor: Colors.transparent,
                color: data.index == 0 ? MyColor.primary : MyColor.grey,
                icon: const Icon(Icons.home),
                iconSize: 32,
                onPressed: () {
                  // index = 0;
                  data.selectDestination(0);
                },
              ),
              IconButton(
                // highlightColor: Colors.transparent,
                color: data.index == 1 ? MyColor.primary : MyColor.grey,
                icon: const Icon(Icons.person),
                iconSize: 32,
                onPressed: () {
                  data.selectDestination(1);
                },
              ),
            ],
          ),
        ),
      );
    });
  }
}
