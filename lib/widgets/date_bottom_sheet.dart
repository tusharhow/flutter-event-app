import 'package:flutter/material.dart';

import '../constants.dart';
import 'date_selection_bottom_sheet.dart';

void modalBottomSheetDate(context) {
  showModalBottomSheet(
      context: context,
      builder: (builder) {
        return SingleChildScrollView(
          child: Container(
            height: 200.0,
            color: Color(0xFF737373),
            child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: const Radius.circular(40.0),
                        topRight: const Radius.circular(40.0))),
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
                    GestureDetector(
                      onTap: () {
                        modalBottomSheetSelectDate(context);
                      },
                      child: Container(
                        height: 55,
                        width: MediaQuery.of(context).size.width / 1.1,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color(0xffF9FAFB),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: kDefaultPadding),
                          child: Row(children: [
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xffFFF2EC),
                              ),
                              child: Center(
                                child: Image.asset(
                                  'assets/icons/calender.png',
                                  height: 45,
                                  width: 45,
                                  color: Colors.deepOrange,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: kDefaultPadding,
                            ),
                            Text(
                              'Select starting date',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.grey,
                              ),
                            ),
                          ]),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 55,
                      width: MediaQuery.of(context).size.width / 1.1,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0xffF9FAFB),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: kDefaultPadding),
                        child: Row(children: [
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xffFFF2EC),
                            ),
                            child: Center(
                              child: Image.asset(
                                'assets/icons/calender.png',
                                height: 45,
                                width: 45,
                                color: Colors.deepOrange,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: kDefaultPadding,
                          ),
                          Text(
                            'Select end date (optional)',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.grey,
                            ),
                          ),
                        ]),
                      ),
                    ),
                  ],
                )),
          ),
        );
      });
}