import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController tabCcontroller;

  List tabList = [
    {'title': '动漫'},
    {'title': '动漫'},
    {'title': '动漫'},
    {'title': '动漫'},
  ];

  @override
  void initState() {
    super.initState();
    tabCcontroller = TabController(vsync: this, length: 3);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: ScreenUtil().statusBarHeight,
          ),
          Expanded(child: Container()),
        ],
      ),
    );
  }
}
