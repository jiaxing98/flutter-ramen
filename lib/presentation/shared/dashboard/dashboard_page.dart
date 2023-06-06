import 'package:flutter/material.dart';
import 'package:flutter_ramen/presentation/menu/menu_page.dart';
import 'package:flutter_ramen/presentation/shared/dashboard/tab_bar_widget.dart';
import 'package:lb_flutter_utilities/widgets/keep_alive.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: Column(
          children: [
            Expanded(
              child: TabBarView(
                physics: NeverScrollableScrollPhysics(),
                children: [
                  LbKeepAlive(child: MenuPage()),
                  LbKeepAlive(child: Container()),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0.0, -2.0),
                    color: Colors.black.withOpacity(0.1),
                    spreadRadius: 1.0,
                    blurRadius: 10.0,
                  )
                ],
                color: Colors.white,
              ),
              child: const SafeArea(
                top: false,
                child: TabBarWidget(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
