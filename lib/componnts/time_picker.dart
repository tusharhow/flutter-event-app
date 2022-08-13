import 'package:flutter/material.dart';

class TimePickerComponent extends StatefulWidget {
  const TimePickerComponent({Key? key}) : super(key: key);

  @override
  _TimePickerComponentState createState() => _TimePickerComponentState();
}

class _TimePickerComponentState extends State<TimePickerComponent> {
  int selectedIndex = 0;
  final List<String> _screen = [
    "AM",
    "PM",
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: 2,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            setState(() {
              selectedIndex = index;
            });
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: _buildTimePickerComponent(index),
          ),
        ),
      ),
    );
  }

  Widget _buildTimePickerComponent(int index) {
    return Row(
      children: [
        Container(
          margin: const EdgeInsets.only(right: 10),
          height: 45,
          width: 45,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: selectedIndex == index ? Colors.orange : Colors.transparent,
          ),
          child: Center(
            child: Text(
              _screen[index],
              style: TextStyle(
                color: selectedIndex == index ? Colors.white : Colors.grey,
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
