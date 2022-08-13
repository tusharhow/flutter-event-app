import 'package:dotted_border/dotted_border.dart';
import 'package:event_app/componnts/menu_selecetion.dart';
import 'package:event_app/componnts/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

import '../constants.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

bool locationClicked = false;
bool dateClicked = false;

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _controller = TextEditingController();
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
                        const SizedBox(height: 10),
                        SizedBox(
                          height: 55,
                          width: MediaQuery.of(context).size.width / 2,
                          child: TextField(
                            controller: _controller,
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
            MenuSelection(
                locationClicked: locationClicked, dateClicked: dateClicked),
            const SizedBox(height: kDefaultPadding),
            ReusablePrimaryButton(
                childText: 'Create event',
                textColor: Colors.white,
                buttonColor:
                    _controller.text.isEmpty ? kSecondaryColor : kPrimaryColor,
                onPressed: () {
                  if (_controller.text.isNotEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text(
                        'Event created successfully',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      backgroundColor: Colors.green,
                    ));
                  } else {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text('Empty description'),
                            content: Text(
                                'Please write a description for your event so that\nthe hype-train can depart'),
                            actions: <Widget>[
                              FlatButton(
                                child: Text('OK'),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                            ],
                          );
                        });
                  }
                })
          ]),
        ));
  }
}
