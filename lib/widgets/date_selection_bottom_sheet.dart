import 'package:event_app/componnts/time_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_time_picker_spinner/flutter_time_picker_spinner.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

import '../constants.dart';

void modalBottomSheetSelectDate(context) {
  showModalBottomSheet(
      context: context,
      builder: (builder) {
        return Container(
          height: 900.0,
          color: Color(0xFF737373),
          child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: const Radius.circular(40.0),
                      topRight: const Radius.circular(40.0))),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 5,
                      width: MediaQuery.of(context).size.width / 3,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.black.withOpacity(0.1),
                      ),
                    ),
                    const SizedBox(
                      height: kDefaultPadding,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: kDefaultPadding),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Row(
                          children: [
                            Icon(
                              Icons.arrow_back_rounded,
                              color: Colors.deepOrange,
                            ),
                            const SizedBox(
                              width: kDefaultPadding,
                            ),
                            Text(
                              'Back',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.deepOrange,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: kDefaultPadding,
                    ),
                    SizedBox(
                      height: 230,
                      child: SfDateRangePicker(
                        selectionColor: Colors.deepOrange,
                        selectionTextStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                        selectionMode: DateRangePickerSelectionMode.multiple,
                        initialSelectedRange: PickerDateRange(
                            DateTime.now().subtract(const Duration(days: 4)),
                            DateTime.now().add(const Duration(days: 3))),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: kDefaultPadding),
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 35,
                            child: TimePickerSpinner(
                              is24HourMode: false,
                              normalTextStyle:
                                  TextStyle(fontSize: 24, color: Colors.orange),
                              highlightedTextStyle:
                                  TextStyle(fontSize: 24, color: Colors.yellow),
                              spacing: 10,
                              itemHeight: 50,
                              onTimeChange: (time) {},
                            ),
                          ),
                          const SizedBox(
                            width: kDefaultPadding,
                          ),
                          // const TimePickerComponent(),
                        ],
                      ),
                    ),
                  ],
                ),
              )),
        );
      });
}
