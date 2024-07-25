import 'package:flutter/material.dart';
import 'package:speeder_website/utills/utils.dart';

class ContactMobile2 extends StatefulWidget {
  const ContactMobile2({super.key});

  @override
  State<ContactMobile2> createState() => _ContactMobile2State();
}

class _ContactMobile2State extends State<ContactMobile2> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: hexToColor('#ECF1FA'),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5), // Shadow color
              spreadRadius: 2, // Spread radius
              blurRadius: 2, // Blur radius
              offset: Offset(0, 1), // Offset of the shadow
            ),
          ],
          borderRadius: BorderRadius.circular(15),
        ),
        height: 900,
        width: 1700,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
          child: Container(
            child: Column(
              children: [
                Text(
                  'Contact US',
                  style: TextStyle(
                      fontSize: 40,
                      color: hexToColor('#000000'),
                      fontFamily: 'Montserrat'),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 30, 20, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text('Name'),
                                  Text(
                                    '*',
                                    style:
                                        TextStyle(color: hexToColor('#FF0000')),
                                  )
                                ],
                              ),
                              TextField(
                                maxLines: 1,
                                decoration: InputDecoration(
                                  filled:
                                      true, // Fill the TextField with a color
                                  fillColor: hexToColor('#FFFFFF'),
                                  hintText: 'First ',
                                  hintStyle:
                                      TextStyle(color: hexToColor('#DAD3D3')),

                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    borderSide: BorderSide(),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 30), // Add space between text fields
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                          child: Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [],
                                ),
                                TextField(
                                  decoration: InputDecoration(
                                    filled:
                                        true, // Fill the TextField with a color
                                    fillColor: hexToColor('#FFFFFF'),
                                    hintText: 'Last ',
                                    hintStyle:
                                        TextStyle(color: hexToColor('#DAD3D3')),

                                    border: OutlineInputBorder(
                                        borderSide: BorderSide(),
                                        borderRadius: BorderRadius.circular(8)),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 20, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text('Contact no'),
                                  Text(
                                    '*',
                                    style:
                                        TextStyle(color: hexToColor('#FF0000')),
                                  )
                                ],
                              ),
                              TextField(
                                decoration: InputDecoration(
                                  filled:
                                      true, // Fill the TextField with a color
                                  fillColor: hexToColor('#FFFFFF'),

                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(),
                                      borderRadius: BorderRadius.circular(8)),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 30), // Add space between text fields
                      Expanded(
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Alt. Contact no. (Optional)',
                                    style: TextStyle(fontSize: 9),
                                  ),
                                  Text(
                                    '*',
                                    style:
                                        TextStyle(color: hexToColor('#FF0000')),
                                  )
                                ],
                              ),
                              TextField(
                                decoration: InputDecoration(
                                  filled:
                                      true, // Fill the TextField with a color
                                  fillColor: hexToColor('#FFFFFF'),

                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(),
                                      borderRadius: BorderRadius.circular(8)),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text('Email'),
                                  Text(
                                    '*',
                                    style:
                                        TextStyle(color: hexToColor('#FF0000')),
                                  )
                                ],
                              ),
                              TextField(
                                decoration: InputDecoration(
                                  filled:
                                      true, // Fill the TextField with a color
                                  fillColor: hexToColor('#FFFFFF'),

                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(),
                                      borderRadius: BorderRadius.circular(8)),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 20), // Add space between text fields
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text('Message'),
                                  Text(
                                    '*',
                                    style:
                                        TextStyle(color: hexToColor('#FF0000')),
                                  )
                                ],
                              ),
                              TextField(
                                maxLines: 6,
                                decoration: InputDecoration(
                                  filled:
                                      true, // Fill the TextField with a color
                                  fillColor: hexToColor('#FFFFFF'),

                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(),
                                      borderRadius: BorderRadius.circular(8)),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 20), // Add space between text fields
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 30, 10, 0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: hexToColor('#8DC531'),
                          ),
                          height: 49,
                          width: 1100,
                          child: Center(
                            child: Text(
                              'Send',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontFamily: 'Montserrat',
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
