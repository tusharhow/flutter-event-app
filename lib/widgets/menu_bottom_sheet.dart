import 'package:flutter/material.dart';

import '../constants.dart';

void modalBottomSheetMenu(context) {
  showModalBottomSheet(
      context: context,
      builder: (builder) {
        return SingleChildScrollView(
          child: Container(
            height: 480.0,
            color: Color(0xFF737373),
            child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: const Radius.circular(30.0),
                        topRight: const Radius.circular(30.0))),
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
                    SizedBox(
                      height: 60,
                      width: MediaQuery.of(context).size.width / 1.12,
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Search...',
                          hintStyle: TextStyle(
                            fontSize: 16,
                            color: Colors.black45,
                          ),
                          prefixIcon: Image.asset(
                            'assets/icons/search.png',
                            height: 20,
                            width: 20,
                          ),
                          filled: true,
                          fillColor: Colors.black.withOpacity(0.03),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Colors.transparent,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Colors.transparent,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: kDefaultPadding,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'assets/images/map.png',
                      ),
                    ),
                    const SizedBox(
                      height: kDefaultPadding,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: kDefaultPadding),
                      child: Row(
                        children: [
                          Container(
                            height: 50,
                            width: 55,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xffFFF2EC),
                            ),
                            child: Center(
                              child: Icon(
                                Icons.arrow_forward_ios,
                                color: kPrimaryColor,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: kDefaultPadding,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'My current location',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(
                                height: kDefaultPadding / 2,
                              ),
                              Text(
                                'Beyoglu, Istanbul',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: kDefaultPadding,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: kDefaultPadding),
                        child: Text(
                          'Nearby',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: kDefaultPadding,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: kDefaultPadding),
                      child: Row(
                        children: [
                          Container(
                            height: 50,
                            width: 55,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xffF5FBFF),
                            ),
                            child: Center(
                              child: Image.asset(
                                'assets/icons/flash.png',
                                height: 35,
                                width: 35,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: kDefaultPadding,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Klein Harbiye',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(
                                height: kDefaultPadding / 2,
                              ),
                              Text(
                                'Klein Harbiye',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: kDefaultPadding,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: kDefaultPadding),
                      child: Row(
                        children: [
                          Container(
                            height: 50,
                            width: 55,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xffF5FBFF),
                            ),
                            child: Center(
                              child: Image.asset(
                                'assets/icons/flash.png',
                                height: 35,
                                width: 35,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: kDefaultPadding,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Klein Harbiye',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(
                                height: kDefaultPadding / 2,
                              ),
                              Text(
                                'Klein Harbiye',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                )),
          ),
        );
      });
}