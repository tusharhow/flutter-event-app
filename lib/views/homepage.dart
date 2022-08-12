import 'package:dotted_border/dotted_border.dart';
import 'package:event_app/componnts/primary_button.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 1.0,
          title: const Text(
            'Give your event a name',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 14,
            ),
          ),
          actions: [
            IconButton(
              icon: const Icon(
                Icons.close,
                color: Colors.grey,
              ),
              onPressed: () {},
            ),
          ],
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          physics: BouncingScrollPhysics(),
          child: Column(children: [
            const SizedBox(height: kDefaultPadding * 2),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: kDefaultPadding,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      'assets/images/user.png',
                      height: 60,
                      width: 60,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(width: kDefaultPadding),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Media',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: kDefaultPadding / 2),
                        Row(
                          children: [
                            DottedBorder(
                              borderType: BorderType.RRect,
                              radius: Radius.circular(12),
                              color: Colors.black38,
                              dashPattern: [5, 5],
                              child: ClipRRect(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                child: Container(
                                  height: 130,
                                  width: 100,
                                  color: Colors.black.withOpacity(0.03),
                                  child: Center(
                                    child: Container(
                                      height: 33,
                                      width: 35,
                                      decoration: BoxDecoration(
                                        color: Colors.black26,
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: const Center(
                                        child: Icon(
                                          Icons.add,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: kDefaultPadding),
                            DottedBorder(
                              borderType: BorderType.RRect,
                              radius: Radius.circular(12),
                              color: Colors.black38,
                              dashPattern: [5, 5],
                              child: ClipRRect(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                child: Container(
                                  height: 130,
                                  width: 100,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: kDefaultPadding * 2),
                        Text(
                          'Description',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: kDefaultPadding / 2),
                        // Text(
                        //   'Write a description for your event so that\nthe hype-train can depart',
                        //   style: TextStyle(
                        //     fontSize: 15,
                        //     color: Colors.grey,
                        //   ),
                        // ),
                        SizedBox(
                          height: 55,
                          width: 300,
                          child: TextField(
                            decoration: InputDecoration(
                              hintText:
                                  'Write a description for your event so that\nthe hype-train can depart',
                              hintStyle: TextStyle(
                                fontSize: 15,
                                color: Colors.grey,
                              ),
                              border: InputBorder.none,
                            ),
                            maxLines: 5,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: kDefaultPadding * 12),
            Container(
              height: 65,
              width: MediaQuery.of(context).size.width / 1.08,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  color: Colors.black.withOpacity(0.1),
                  width: 1,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        _modalBottomSheetMenu(context);
                      },
                      child: Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xffF5FBFF),
                        ),
                        child: Center(
                          child: Image.asset(
                            'assets/icons/map.png',
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    GestureDetector(
                      onTap: () {
                        _modalBottomSheetDate(context);
                      },
                      child: Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xffF5FBFF),
                        ),
                        child: Center(
                          child: Image.asset(
                            'assets/icons/calender.png',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: kDefaultPadding),
            ReusablePrimaryButton(
                childText: 'Create event',
                textColor: Colors.white,
                buttonColor: kSecondaryColor,
                onPressed: () {})
          ]),
        ));
  }
}

void _modalBottomSheetMenu(context) {
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

void _modalBottomSheetDate(context) {
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
                        _modalBottomSheetSelectDate(context);
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

void _modalBottomSheetSelectDate(context) {
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
                    const SizedBox(
                      height: kDefaultPadding,
                    ),
                    Image.asset(
                      'assets/images/date.png',
                      fit: BoxFit.contain,
                    ),
                  ],
                ),
              )),
        );
      });
}
