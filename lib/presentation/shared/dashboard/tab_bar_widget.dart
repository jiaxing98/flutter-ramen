import 'package:flutter/material.dart';
import 'package:flutter_ramen/presentation/shared/dashboard/tab_item_widget.dart';
import 'package:flutter_ramen/resources/colors.dart';
import 'package:flutter_ramen/resources/images.dart';

class TabBarWidget extends StatefulWidget {
  const TabBarWidget({super.key});

  @override
  State<TabBarWidget> createState() => _TabBarWidgetState();
}

class _TabBarWidgetState extends State<TabBarWidget> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return TabBar(
      labelColor: Theme.of(context).colorScheme.primary,
      unselectedLabelColor: colorTextUnselect,
      onTap: (index) {
        setState(() {
          this.index = index;
        });
      },
      labelPadding: const EdgeInsets.symmetric(horizontal: 4.0),
      indicatorColor: Colors.transparent,
      tabs: [
        TabItemWidget(
          label: "Home",
          iconActive: imagesIconHomeActive,
          iconInactive: imagesIconHomeInactive,
          isActive: index == 0,
        ),
        TabItemWidget(
          label: "Billing",
          iconActive: imagesIconBillActive,
          iconInactive: imagesIconBillInactive,
          isActive: index == 1,
        ),
        TabItemWidget(
          label: "Profile",
          iconActive: imagesIconProfileActive,
          iconInactive: imagesIconProfileInActive,
          isActive: index == 2,
        ),
        TabItemWidget(
          label: "Support",
          iconActive: imagesIconSupportActive,
          iconInactive: imagesIconSupportInactive,
          isActive: index == 3,
        ),
      ],
    );
  }
}
