
import 'package:flutter/material.dart';

import 'c4.dart';
class c1 extends StatelessWidget {
  const c1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      length: 3,
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topRight: Radius.circular(30),topLeft: Radius.circular(30))
            ),
            child: Column(
              children: [
                TabBar(
                    labelColor: Colors.black,
                    labelStyle: TextStyle(fontWeight: FontWeight.w700,fontSize: 18),
                    unselectedLabelColor: Colors.grey,
                    unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w500),
                    tabs: [
                      Tab(
                        text: 'Hot Coffee',
                      ),
                      Tab(
                        text: 'Cold Coffee',
                      ),
                      Tab(
                        text: 'Other',
                      ),
                    ]),
                Expanded(child: TabBarView(
                  children: [
                    c4(),
                    c4(),
                    c4(),

                  ],
                ))
              ],
            ),
          )

      ),
    );
  }
}