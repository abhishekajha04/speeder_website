import 'package:flutter/material.dart';
import 'package:speeder_website/utills/utils.dart';

class ContactDextop extends StatefulWidget {
  const ContactDextop({super.key});

  @override
  State<ContactDextop> createState() => _ContactDextopState();
}

class _ContactDextopState extends State<ContactDextop> {
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
          padding: const EdgeInsets.fromLTRB(200, 0, 200, 0),
          child: Container(
            child: Column(
              children: [
                Text(
                  'Contact US',
                  style: TextStyle(
                      fontSize: 48,
                      color: hexToColor('#000000'),
                      fontFamily: 'Montserrat'),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 30, 20, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            filled: true, // Fill the TextField with a color
                            fillColor: hexToColor('#FFFFFF'),
                            hintText: 'First ',
                            hintStyle: TextStyle(color: hexToColor('#DAD3D3')),

                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(8)),
                          ),
                        ),
                      ),
                      SizedBox(width: 10), // Add space between text fields
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            filled: true, // Fill the TextField with a color
                            fillColor: hexToColor('#FFFFFF'),
                            hintText: 'Last ',
                            hintStyle: TextStyle(color: hexToColor('#DAD3D3')),

                            border: OutlineInputBorder(
                                borderSide: BorderSide.none, // Border colo
                                borderRadius: BorderRadius.circular(8)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 30, 20, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            filled: true, // Fill the TextField with a color
                            fillColor: hexToColor('#FFFFFF'),

                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(8)),
                          ),
                        ),
                      ),
                      SizedBox(width: 10), // Add space between text fields
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            filled: true, // Fill the TextField with a color
                            fillColor: hexToColor('#FFFFFF'),

                            border: OutlineInputBorder(
                                borderSide: BorderSide.none, // Border colo
                                borderRadius: BorderRadius.circular(8)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            filled: true, // Fill the TextField with a color
                            fillColor: hexToColor('#FFFFFF'),

                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(8)),
                          ),
                        ),
                      ),
                      SizedBox(width: 20), // Add space between text fields
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          maxLines: 6,
                          decoration: InputDecoration(
                            filled: true, // Fill the TextField with a color
                            fillColor: hexToColor('#FFFFFF'),

                            border: OutlineInputBorder(
                              borderSide: BorderSide.none, // Border colo
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 20), // Add space between text fields
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: hexToColor('#8DC531'),
                        ),
                        height: 49,
                        width: 1120,
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
