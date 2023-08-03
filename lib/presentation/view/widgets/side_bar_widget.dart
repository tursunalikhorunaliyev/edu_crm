import 'package:edu_crm/presentation/view/widgets/side_bar_animated_button.dart';
import 'package:edu_crm/presentation/view/widgets/text_plus_widget.dart';
import 'package:edu_crm/test/test_button.dart';
import 'package:flutter/material.dart';

class SideBarWidget extends StatefulWidget {
  const SideBarWidget({super.key});

  @override
  State<SideBarWidget> createState() => _SideBarWidgetState();
}

class _SideBarWidgetState extends State<SideBarWidget> {
  bool dashboard = false;
  bool analitka = false;
  bool yonalish = false;
  bool calendar = false;
  bool tasks = false;
  bool profile = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
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
                  const Text(
                    "REduse",
                    style: TextStyle(
                      fontFamily: "Inter",
                      fontWeight: FontWeight.w900,
                      fontSize: 32 / 1.5,
                      color: Color(0xFF172D43),
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

              GestureDetector(
                onTap: () {
                  dashboard = !dashboard;
                  analitka = false;
                  yonalish = false;
                  calendar = false;
                  tasks = false;
                  profile = false;
                  setState(() {});
                },
                child: TestButton(
                  prefixIconName: "images/graph.png",
                  text: "Dashboard",
                  iconHeight: 24.06 / 1.5,
                  iconWidth: 24.06 / 1.5,
                  onTapped: dashboard,
                ),
              ),

              const SizedBox(height: 11 / 1.5),
              GestureDetector(
                onTap: () {
                  analitka = !analitka;

                  dashboard = false;
                  yonalish = false;
                  calendar = false;
                  tasks = false;
                  profile = false;
                  setState(() {});
                },
                child: TestButton(
                  prefixIconName: "images/chart-square.png",
                  text: "Analitika",
                  iconHeight: 24.06 / 1.5,
                  iconWidth: 24.06 / 1.5,
                  isNew: true,
                  onTapped: analitka,
                ),
              ),

              const SizedBox(height: 11 / 1.5),
              SideBarAnimatedButton(
                text: "Ichki tizim",
                icon: "assets/images/Iconebox.png",
                elements: const ["Hodimlar", "O'qituvchilar", "Darsjadvallari"],
                contentHeight: 134,
                onChanged: (index) {
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
                icon: "assets/images/empty-wallet.png",
                elements: const [],
                contentHeight: 50,
                onChanged: (index) {
                  print(index);
                },
              ),
              const SizedBox(height: 11 / 1.5),
              GestureDetector(
                onTap: () {
                  dashboard = false;
                  analitka = false;
                  yonalish = !yonalish;
                  calendar = false;
                  tasks = false;
                  profile = false;
                  setState(() {});
                },
                child: TestButton(
                  prefixIconName: "images/chart-square.png",
                  text: "Yo’nalishlar",
                  iconHeight: 24.06 / 1.5,
                  iconWidth: 24.06 / 1.5,
                  isNotification: true,
                  notificationCount: 16,
                  onTapped: yonalish,
                ),
              ),
              const SizedBox(height: 11 / 1.5),
              GestureDetector(
                onTap: () {
                  dashboard = false;
                  analitka = false;
                  yonalish = false;
                  calendar = !calendar;
                  tasks = false;
                  profile = false;
                  setState(() {});
                },
                child: TestButton(
                  iconHeight: 24.06 / 1.5,
                  iconWidth: 24.06 / 1.5,
                  prefixIconName: "images/calendar.png",
                  text: "Calendar",
                  onTapped: calendar,
                ),
              ),
              const SizedBox(height: 11 / 1.5),
              GestureDetector(
                onTap: () {
                  dashboard = false;
                  analitka = false;
                  yonalish = false;
                  calendar = false;
                  tasks = !tasks;
                  profile = false;
                  setState(() {});
                },
                child: TestButton(
                  iconHeight: 24.06 / 1.5,
                  iconWidth: 24.06 / 1.5,
                  prefixIconName: "images/Notes.png",
                  text: "Tasks",
                  onTapped: tasks,
                ),
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
              GestureDetector(
                onTap: () {
                  dashboard = false;
                  analitka = false;
                  yonalish = false;
                  calendar = false;
                  tasks = false;
                  profile = !profile;
                  setState(() {});
                },
                child: TestButton(
                  iconHeight: 24.06 / 1.5,
                  iconWidth: 24.06 / 1.5,
                  prefixIconName: "images/setting-2.png",
                  text: "My Profile",
                  onTapped: profile,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
