import 'package:flutter/material.dart';
import 'package:flutter_ramen/presentation/menu/menu_page_viewmodel.dart';
import 'package:lb_flutter_utilities/app/provider.dart';
import 'package:lb_flutter_utilities/app/service_collection.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: LbProvider<MenuPageViewModel>(
          viewModel: sl(),
          builder: (context, model, child) => ListView(
            children: [
              Text("flutter"),
              Text("ramen"),
            ],
          ),
        ),
      ),
    );
  }
}
