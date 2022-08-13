import 'package:flutter/material.dart';

import '../constants.dart';
import '../widgets/date_bottom_sheet.dart';
import '../widgets/menu_bottom_sheet.dart';

class MenuSelection extends StatefulWidget {
   MenuSelection({Key? key, required this.locationClicked, required this.dateClicked}) : super(key: key);
   bool locationClicked;
   bool dateClicked;

  @override
  State<MenuSelection> createState() => _MenuSelectionState();
}

class _MenuSelectionState extends State<MenuSelection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      width: MediaQuery.of(context).size.width / 1.08,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: Colors.black.withOpacity(0.03),
          width: 1,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Row(
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  if (widget.locationClicked) {
                    widget.locationClicked = false;
                  } else {
                    widget.locationClicked = true;
                  }
                });
                modalBottomSheetMenu(context);
              },
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: widget.locationClicked
                          ? Color(0xffFFF2EC)
                          : const Color(0xffF5FBFF),
                    ),
                    child: Center(
                      child: Image.asset(
                        'assets/icons/map.png',
                        color: widget.locationClicked ? kPrimaryColor : Colors.black,
                      ),
                    ),
                  ),
                  widget.locationClicked
                      ? Positioned(
                          right: -5,
                          bottom: 30,
                          child: Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                              shape: widget.locationClicked
                                  ? BoxShape.circle
                                  : BoxShape.circle,
                              color:
                                  widget.locationClicked ? Colors.green : Colors.white,
                            ),
                            child: Center(
                              child: Icon(
                                Icons.check,
                                color: Colors.white,
                                size: 13,
                              ),
                            ),
                          ),
                        )
                      : const SizedBox(),
                ],
              ),
            ),
            const SizedBox(width: 10),
            GestureDetector(
              onTap: () {
                if (widget.dateClicked) {
                  setState(() {
                    widget.dateClicked = false;
                  });
                } else {
                  setState(() {
                    widget.dateClicked = true;
                  });
                }
                modalBottomSheetDate(context);
              },
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: widget.dateClicked
                          ? Color(0xffFFF2EC)
                          : const Color(0xffF5FBFF),
                    ),
                    child: Center(
                      child: Image.asset(
                        'assets/icons/calender.png',
                        color: widget.dateClicked ? kPrimaryColor : Colors.black,
                      ),
                    ),
                  ),
                  widget.dateClicked
                      ? Positioned(
                          right: -5,
                          bottom: 30,
                          child: Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                              shape: widget.dateClicked
                                  ? BoxShape.circle
                                  : BoxShape.circle,
                              color: widget.dateClicked ? Colors.green : Colors.white,
                            ),
                            child: Center(
                              child: Icon(
                                Icons.check,
                                color: Colors.white,
                                size: 13,
                              ),
                            ),
                          ),
                        )
                      : const SizedBox(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
