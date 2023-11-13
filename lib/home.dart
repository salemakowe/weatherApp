import 'package:flutter/material.dart';
import 'package:weather_app/constants/mycolors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      // appBar: MyWidgets().appbar(context: context, color: Colors.transparent),
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  gradient: MyColors.backGround(
                [MyColors.lightgrey, Colors.lightBlue, MyColors.offwhite],
                Alignment.topLeft,
                Alignment.bottomRight,
              )),
            ),
          ),
        ],
      ),
    );
  }
}
