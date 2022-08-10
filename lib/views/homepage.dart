import 'package:dotted_border/dotted_border.dart';
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
      body: Column(
        children: [
          const SizedBox(height: kDefaultPadding * 2),
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  'assets/images/user.png',
                  height: 65,
                  width: 65,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: kDefaultPadding),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Media',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: kDefaultPadding / 2),
                      DottedBorder(
                        borderType: BorderType.RRect,
                        radius: Radius.circular(12),
                        color: Colors.black38,
                        dashPattern: [5, 5],
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          child: Container(
                            height: 120,
                            width: 90,
                            color: Colors.black12,
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
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
