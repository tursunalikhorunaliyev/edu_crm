import 'package:edu_crm/presentation/view/widgets/side_bar_widget.dart';
import 'package:edu_crm/presentation/view/widgets/top_bar.dart';
import 'package:flutter/material.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          SizedBox(
            width: 300,
            child: SideBarWidget(),
          ),
          const Expanded(
              child: Column(
            children: [
              SizedBox(
                height: 100,
                child: TopBar(),
              ),
            ],
          ))
        ],
      ),
    );
  }
}
