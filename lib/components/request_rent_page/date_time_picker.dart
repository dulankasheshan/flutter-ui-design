import 'package:flutter/material.dart';

import '../../styles/style.dart';

class DateTimePicker extends StatefulWidget {
  const DateTimePicker({super.key});

  @override
  State<DateTimePicker> createState() => _DateTimePickerState();
}

class _DateTimePickerState extends State<DateTimePicker> {
  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Row(
          children: [


            //Date text field
            SizedBox(
                width: screenWidth*0.5,
                child:   Padding(
                  padding: EdgeInsets.all(smallPadding),
                  child: Center(
                    child: TextField(
                      keyboardType: TextInputType.datetime,
                      decoration: InputDecoration(
                        hintText: 'Date',
                        hintStyle: const TextStyle(
                          color: Color(0xFFB8B8B8),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                        filled: true,
                        fillColor: background,
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                            color:  Color(0xFFB8B8B8),
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                            color:  Color(0xFFB8B8B8),
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        ),
                      ),
                    ),
                  ),
                )
            ),

            //Time text field
            SizedBox(
                width: screenWidth*0.5,
                child:   Padding(
                  padding: EdgeInsets.all(smallPadding),
                  child: Center(
                    child: TextField(
                      keyboardType: TextInputType.datetime,
                      decoration: InputDecoration(
                        hintText: 'Time',
                        hintStyle: const TextStyle(
                            color: Color(0xFFB8B8B8),
                            fontSize: 16,
                            fontWeight: FontWeight.w500
                        ),
                        filled: true,
                        fillColor: background,
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                            color:  Color(0xFFB8B8B8),
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                            color:  Color(0xFFB8B8B8),
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        ),
                      ),
                    ),
                  ),
                )
            ),
          ],
        ),


        //Promo code text field
        SizedBox(
            width: screenWidth,
            child:   Padding(
              padding: EdgeInsets.all(smallPadding),
              child: Center(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter Promo Code',
                    hintStyle: const TextStyle(
                        color: Color(0xFFB8B8B8),
                        fontSize: 16,
                        fontWeight: FontWeight.w500
                    ),
                    suffixIcon: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.copy_sharp, color: Color(0xFFB8B8B8)),
                    ),
                    filled: true,
                    fillColor: background,
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color:  Color(0xFFB8B8B8),
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color:  Color(0xFFB8B8B8),
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                  ),
                ),
              ),
            )
        ),
      ],
    );
  }
}
