import 'package:edu_crm/presentation/controller/cubits/cubit/on_tap_cubit.dart';
import 'package:edu_crm/presentation/view/widgets/side_bar_line_widget.dart';
import 'package:edu_crm/presentation/view/widgets/text_plus_widget.dart';
import 'package:edu_crm/utils/app_const.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SideBarWidget extends StatelessWidget {
  SideBarWidget({super.key});
  final boolCommerceCubit = OnTapCubit();
  final boolFanCubit = OnTapCubit();
  @override
  Widget build(BuildContext context) {
    bool onTap = false;
    return ColoredBox(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 28 / 1.5,
                    height: 28,
                    child: Image.asset(
                      "images/icon1.png",
                      width: 28,
                      height: 28,
                    ),
                  ),
                  const SizedBox(width: 5 / 1.5),
                  Text(
                    "REduse",
                    style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w900,
                        fontSize: 32 / 1.5,
                        color: const Color(0xFF172D43)),
                  ),
                ],
              ),
              const SizedBox(
                height: 51 / 1.5,
              ),
              const Padding(
                padding: EdgeInsets.only(right: 17 / 1.5),
                child: TextPlusWidget(
                  text: "PAGES",
                  iconPath: "Plus.png",
                ),
              ),
              const SizedBox(height: 11 / 1.5),
              const SidebarLineWidget(
                listi: [],
                firstIcon: "graph.png",
                isTapping: false,
                text: "Dashboard",
                iconHeight: 24.06 / 1.5,
                iconWidth: 24.06 / 1.5,
              ),
              const SizedBox(height: 11 / 1.5),
              const SidebarLineWidget(
                iconHeight: 24.06 / 1.5,
                iconWidth: 24.06 / 1.5,
                listi: [],
                firstIcon: "chart-square.png",
                text: "Analytics",
                isNew: true,
                isTapping: false,
              ),
              const SizedBox(height: 11 / 1.5),
              GestureDetector(
                onTap: () {
                  onTap = !onTap;
                  boolCommerceCubit.tap(onTap);
                },
                child: BlocBuilder<OnTapCubit, OnTapState>(
                  bloc: boolCommerceCubit,
                  builder: (context, state) {
                    return SidebarLineWidget(
                      iconHeight: 24.06 / 1.5,
                      iconWidth: 24.06 / 1.5,
                      listi: eCommorceTexts,
                      firstIcon: "Iconebox.png",
                      text: "E-commerce",
                      isTapping: true,
                      isTapped: state.onTap,
                    );
                  },
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(right: 17 / 1.5, top: 50 / 1.5),
                child: TextPlusWidget(
                  text: "APPS",
                  iconPath: "Plus.png",
                ),
              ),
              const SizedBox(
                height: 12 / 1.5,
              ),
              GestureDetector(
                onTap: () {
                  onTap = !onTap;
                  boolFanCubit.tap(onTap);
                },
                child: BlocBuilder<OnTapCubit, OnTapState>(
                  bloc: boolFanCubit,
                  builder: (context, state) {
                    return SidebarLineWidget(
                      iconHeight: 24.06 / 1.5,
                      iconWidth: 24.06 / 1.5,
                      firstIcon: "empty-wallet.png",
                      text: "Fan va yo'nalishlar",
                      isTapping: true,
                      isTapped: state.onTap,
                      listi: fanVaYonalishlar,
                    );
                  },
                ),
              ),
              const SizedBox(height: 11 / 1.5),
              const SidebarLineWidget(
                iconHeight: 24.06 / 1.5,
                iconWidth: 24.06 / 1.5,
                listi: [],
                firstIcon: "messages-2.png",
                text: "Yo'nalishlar",
                isTapping: false,
                notiCount: 16,
                isNotification: true,
              ),
              const SizedBox(height: 11 / 1.5),
              const SidebarLineWidget(
                iconHeight: 24.06 / 1.5,
                iconWidth: 24.06 / 1.5,
                listi: [],
                firstIcon: "calendar.png",
                text: "Calendar",
                isTapping: false,
              ),
              const SizedBox(height: 11 / 1.5),
              const SidebarLineWidget(
                iconHeight: 24.06 / 1.5,
                iconWidth: 24.06 / 1.5,
                listi: [],
                firstIcon: "Notes.png",
                text: "Tasks",
                isTapping: false,
              ),
              const SizedBox(
                height: 50 / 1.5,
              ),
              const Text(
                "SETTINGS",
                style: TextStyle(
                  fontSize: 16 / 1.5,
                  color: Color(0xFF7B8190),
                ),
              ),
              const SizedBox(height: 11 / 1.5),
              const SidebarLineWidget(
                iconHeight: 24.06 / 1.5,
                iconWidth: 24.06 / 1.5,
                listi: [],
                firstIcon: "setting-2.png",
                text: "My Profile",
                isTapping: false,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
