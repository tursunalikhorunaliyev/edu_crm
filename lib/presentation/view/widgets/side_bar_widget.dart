import 'package:edu_crm/presentation/view/widgets/side_bar_animated_button.dart';
import 'package:edu_crm/presentation/view/widgets/side_bar_button.dart';
import 'package:edu_crm/presentation/view/widgets/text_plus_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SideBarWidget extends StatelessWidget {
  const SideBarWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //bu shapkasi side barning eng yuqori qismida turadigan widget
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
                      color: const Color(0xFF172D43),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 51 / 1.5),
              const TextPlusIcon(
                text: "PAGES",
                iconPath: "Plus.png",
              ),
              const SizedBox(height: 11 / 1.5),
              const SideBarButton(
                prefixIconName: "images/graph.png",
                text: "Dashboard",
                iconHeight: 24.06 / 1.5,
                iconWidth: 24.06 / 1.5,
              ),
              const SizedBox(height: 11 / 1.5),
              const SideBarButton(
                prefixIconName: "images/chart-square.png",
                text: "Analitika",
                iconHeight: 24.06 / 1.5,
                iconWidth: 24.06 / 1.5,
                isNew: true,
              ),
              const SizedBox(height: 11 / 1.5),
              SideBarAnimatedButton(
                text: "Ichki tizim",
                icon: "assets/images/Iconebox.png",
                elements: const ["Salom", "Alik", "Nima", "Salom", "Xayr"],
                contentHeight: 200,
                onChange: (index) {
                  print(index);
                },
              ),
              const Padding(
                padding: EdgeInsets.only(right: 17 / 1.5, top: 50 / 1.5),
                child: TextPlusIcon(
                  text: "APPS",
                  iconPath: "Plus.png",
                ),
              ),
              const SizedBox(height: 12 / 1.5),
              SideBarAnimatedButton(
                text: "Fan va yo’nalishlar",
                icon: "assets/images/Iconebox.png",
                elements: const ["Salom", "Alik", "Nima"],
                contentHeight: 150,
                onChange: (index) {
                  print(index);
                },
              ),
              const SizedBox(height: 11 / 1.5),
              const SideBarButton(
                prefixIconName: "images/chart-square.png",
                text: "Yo’nalishlar",
                iconHeight: 24.06 / 1.5,
                iconWidth: 24.06 / 1.5,
                isNotification: true,
                notificationCount: 16,
              ),
              const SizedBox(height: 11 / 1.5),
              const SideBarButton(
                iconHeight: 24.06 / 1.5,
                iconWidth: 24.06 / 1.5,
                prefixIconName: "images/calendar.png",
                text: "Calendar",
              ),
              const SizedBox(height: 11 / 1.5),
              const SideBarButton(
                iconHeight: 24.06 / 1.5,
                iconWidth: 24.06 / 1.5,
                prefixIconName: "images/Notes.png",
                text: "Tasks",
              ),
              const SizedBox(height: 50 / 1.5),
              const Text(
                "SETTINGS",
                style: TextStyle(
                  fontSize: 16 / 1.5,
                  color: Color(0xFF7B8190),
                ),
              ),
              const SizedBox(height: 11 / 1.5),
              const SideBarButton(
                iconHeight: 24.06 / 1.5,
                iconWidth: 24.06 / 1.5,
                prefixIconName: "images/setting-2.png",
                text: "My Profile",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
