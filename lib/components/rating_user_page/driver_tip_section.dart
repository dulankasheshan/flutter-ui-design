import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../styles/style.dart';

class DriverTipSection extends StatefulWidget {
  const DriverTipSection({Key? key}) : super(key: key);

  @override
  State<DriverTipSection> createState() => _DriverTipSectionState();
}

class _DriverTipSectionState extends State<DriverTipSection> {
  int selectedTip = 0;

  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: largePadding),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: mediumPadding),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Would you like to add tip?',
                    style: TextStyle(
                      fontFamily: 'PlusJakartaSans',
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: textColor_4,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),

        //tip amount buttons
        Padding(
          padding: EdgeInsets.only(top: largePadding, left: largePadding),
          child: Row(
            children: [
              buildTipButton(20),
              buildTipButton(30),
              buildTipButton(50),
            ],
          ),
        ),

        //Custom amount text field
        Padding(
          padding: EdgeInsets.only(top: largePadding),
          child: SizedBox(
              width: screenWidth,
              child: Padding(
                padding: EdgeInsets.all(smallPadding),
                child: Center(
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: 'Custom Amount',
                      hintStyle: const TextStyle(
                          fontFamily: 'PlusJakartaSans',
                          color: Color(0xFFB8B8B8),
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                      suffixIcon: const Icon(Icons.attach_money_rounded,
                          color: Color(0xFFB8B8B8)),
                      filled: true,
                      fillColor: background,
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFFB8B8B8),
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFFB8B8B8),
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),
                    ),
                  ),
                ),
              )),
        ),
      ],
    );
  }


  //Tip amount button widget
  Widget buildTipButton(int amount) {
    bool isSelected = selectedTip == amount;

    return Padding(
      padding: EdgeInsets.only(right: smallPadding),
      child: GestureDetector(
        onTap: () {
          setState(() {
            selectedTip = amount;
          });
          if (kDebugMode) {
            print('Tip is Rs $amount');
          }
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: isSelected ? Colors.black : Colors.grey[300],
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              'Rs $amount',
              style: TextStyle(
                fontFamily: 'PlusJakartaSans',
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: isSelected ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
