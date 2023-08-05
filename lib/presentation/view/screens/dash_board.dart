import 'package:edu_crm/presentation/view/parts/new_face_part.dart';
import 'package:edu_crm/presentation/view/parts/new_sub_subject_part.dart';
import 'package:edu_crm/presentation/view/parts/physical_stuff_part.dart';
import 'package:edu_crm/presentation/view/parts/sub_subject_part.dart';
import 'package:edu_crm/presentation/view/widgets/path_widget.dart';
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
          const SizedBox(
            width: 260,
            height: double.infinity,
            child: SideBarWidget(),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 100 / 1.5,
                  width: double.infinity,
                  color: Colors.white,
                  child: const TopBar(),
                ),
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 25 / 1.5,
                          child: PathWidget(
                            elements: ["Home", "Ichki tizim", "Hodimlar"],
                          ),
                        ),
                        Expanded(child: NewSubSubjectPart()),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
