// ignore_for_file: prefer_const_constructors
import 'package:edu_crm/presentation/controller/cubits/cubit/selected_button_cubit.dart';
import 'package:edu_crm/presentation/view/widgets/custom_side_bar_line_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SidebarLineWidget extends StatefulWidget {
  final String firstIcon;
  final bool isNew;
  final bool isNotification;
  final int notiCount;
  final String text;
  final bool isTapping;
  final bool isTapped;
  final List<String> listi;
  final double iconWidth;
  final double iconHeight;
  const SidebarLineWidget({
    super.key,
    required this.firstIcon,
    this.isNew = false,
    this.isNotification = false,
    this.notiCount = 0,
    required this.text,
    this.isTapping = false,
    this.isTapped = false,
    required this.listi,
    required this.iconHeight,
    required this.iconWidth,
  });

  @override
  State<SidebarLineWidget> createState() => _SidebarLineWidgetState();
}

class _SidebarLineWidgetState extends State<SidebarLineWidget> {
  final indexBloc = SelectedButtonCubit();

  @override
  Widget build(BuildContext context) {
    final Color onTappedColor = Color(0xFF7364FF);
    final Color blackColor = Color(0xFFFFFFFF);
    return AnimatedContainer(
      duration: Duration(milliseconds: 400),
      curve: Curves.easeInBack,
      width: double.infinity,
      height: widget.isTapped && widget.isTapping
          ? widget.listi.length == 0
              ? 48 / 1.5
              : (33 * (widget.listi.length.toDouble() + 1)) / 1.5
          : 48 / 1.5,
      alignment: Alignment.topCenter,
      decoration: BoxDecoration(
        color: widget.isTapped && widget.isTapping ? onTappedColor : blackColor,
        borderRadius: BorderRadius.circular(9),
      ),
      child: widget.isTapping
          ? Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12 / 1.5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    height: 12 / 1.5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        "images/${widget.firstIcon}",
                        width: widget.iconWidth,
                        height: widget.iconHeight,
                        color: Color(widget.isTapped ? 0xFFFFFFFF : 0xFF3B424A),
                      ),
                      const SizedBox(
                        width: 12 / 1.5,
                      ),
                      Text(
                        widget.text,
                        style: TextStyle(
                          fontFamily: "Inter",
                          color:
                              Color(widget.isTapped ? 0xFFFFFFFF : 0xFF3B424A),
                        ),
                      ),
                      const Spacer(),
                      Image.asset(
                        widget.isTapped
                            ? "images/Chevron_Down_White.png"
                            : "images/Chevron_Down.png",
                        width: 24.06 / 1.5,
                      ),
                    ],
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 36 / 1.5),
                      child:
                          BlocBuilder<SelectedButtonCubit, SelectedButtonState>(
                        bloc: indexBloc,
                        builder: (context, state) {
                          return ListView.builder(
                            itemCount: widget.listi.length,
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                onTap: () {
                                  indexBloc.index(index);
                                },
                                child: SizedBox(
                                  height: 32 / 1.5,
                                  child: CustomSideBarLineWidget(
                                    text: widget.listi[index],
                                    isSelected: index == state.index,
                                  ),
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            )
          : Padding(
              padding: const EdgeInsets.only(top: 12 / 1.5),
              child: Row(
                children: [
                  SizedBox(
                    width: 12 / 1.5,
                  ),
                  Image.asset(
                    "images/${widget.firstIcon}",
                    width: 24 / 1.5,
                    height: 24 / 1.5,
                    color: Color(0xFF3B424A),
                  ),
                  const SizedBox(
                    width: 12 / 1.5,
                  ),
                  Text(
                    widget.text,
                    style: TextStyle(
                      fontFamily: "Inter",
                      color: const Color(0xFF3B424A),
                    ),
                  ),
                  const Spacer(),
                  widget.isNew || widget.isNotification
                      ? Container(
                          height: 23 / 1.5,
                          padding: const EdgeInsets.only(
                            top: 3 / 1.5,
                            bottom: 4 / 1.5,
                            right: 10 / 1.5,
                            left: 10 / 1.5,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: widget.isNew
                                ? const Color(0xFF10B981)
                                : const Color(0xFF5D5FEF),
                          ),
                          child: Text(
                            widget.isNotification
                                ? "+${widget.notiCount}"
                                : "new",
                            style: const TextStyle(
                              color: Colors.white,
                              fontFamily: "Inter",
                              fontSize: 14 / 1.5,
                            ),
                          ),
                        )
                      : const SizedBox(),
                  widget.isTapping
                      ? Image.asset(
                          "images/Chevron_Down.png",
                          color: widget.isTapped ? Colors.white : Colors.black,
                        )
                      : SizedBox(),
                  SizedBox(width: 12 / 1.5),
                ],
              ),
            ),
    );
  }
}
