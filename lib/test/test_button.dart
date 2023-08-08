import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class TestButton extends StatefulWidget {
  final double height;
  final double width;
  final double contentHeight;
  final String hinText;
  final TextStyle hinTextStyle;
  final String icon;

  const TestButton({
    super.key,
    this.height = 40,
    this.width = 250,
    this.icon = "assets/calendar.png",
    this.contentHeight = 300,
    this.hinText = "",
    this.hinTextStyle = const TextStyle(
      color: Color.fromARGB(121, 97, 104, 114),
      fontFamily: "Inter",
      fontWeight: FontWeight.w400,
      fontSize: 14,
    ),
  });

  @override
  State<TestButton> createState() => _TestButtonState();
}

class _TestButtonState extends State<TestButton> {
  bool isOverlayOn = false;
  final textEdit = TextEditingController();
  OverlayEntry? entry;
  final layerLink = LayerLink();
  DateTime dateTime = DateTime(2023, 1, 1, 10, 20);
  String datetime = "";

  void showOverlay() {
    final overlay = Overlay.of(context);
    final renderBox = context.findRenderObject() as RenderBox;
    final size = renderBox.size;
    entry = OverlayEntry(
      builder: (context) => Positioned(
        width: size.width,
        child: CompositedTransformFollower(
          showWhenUnlinked: false,
          link: layerLink,
          offset: Offset(0, size.height + 8),
          child: buildOverlay(),
        ),
      ),
    );
    overlay.insert(entry!);
  }

  void hideOverlay() {
    entry?.remove();
    entry = null;
  }

  Widget buildOverlay() {
    return Material(
      elevation: 0,
      child: Container(
        height: widget.contentHeight,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            width: 1,
            color: const Color(0xFFD0D5DD),
          ),
        ),
        child: SfDateRangePicker(
          initialDisplayDate: dateTime,
          showActionButtons: true,
          maxDate: DateTime(2100),
          initialSelectedDate: dateTime,
          onCancel: () {
            hideOverlay();
          },
          onSubmit: (p0) {
            datetime = p0.toString().toString().substring(0, 10);
            isOverlayOn = false;
            setState(() {});
            hideOverlay();
          },
          selectionMode: DateRangePickerSelectionMode.single,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CompositedTransformTarget(
      link: layerLink,
      child: GestureDetector(
        onTap: () {
          if (isOverlayOn == false) {
            showOverlay();
            isOverlayOn = true;
            setState(() {});
          } else if (isOverlayOn == true) {
            hideOverlay();
            isOverlayOn = false;
            setState(() {});
          }
        },
        child: Container(
          height: widget.height,
          width: widget.width,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(
              width: 1,
              color: const Color(0xFFD0D5DD),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  datetime,
                  style: const TextStyle(fontSize: 14),
                ),
                Container(
                  alignment: Alignment.center,
                  height: widget.height,
                  width: widget.height,
                  decoration: const BoxDecoration(
                    color: Color(0xFFDCE0E4),
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(4),
                      topRight: Radius.circular(4),
                    ),
                  ),
                  child: Image.asset(
                    widget.icon,
                    width: widget.height / 2,
                    height: widget.height / 2,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
