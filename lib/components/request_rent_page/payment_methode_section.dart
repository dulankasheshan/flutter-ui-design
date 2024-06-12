import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../styles/style.dart';

class PaymentMethodeSection extends StatefulWidget {
  const PaymentMethodeSection({Key? key});

  @override
  State<PaymentMethodeSection> createState() => _PaymentMethodeSectionState();
}

class _PaymentMethodeSectionState extends State<PaymentMethodeSection> {
  List<Map<String, dynamic>> paymentOptions = [
    {'image': 'assets/design_1/Payment_1.png', 'acNumber': '**** **** **** 8970', 'optionName': '', 'expires': '12/26', 'amount': ''},
    {'image': 'assets/design_1/Payment_2.png', 'acNumber': '**** **** **** 8970','optionName': '', 'expires': '12/26', 'amount': ''},
    {'image': 'assets/design_1/Payment_3.png', 'acNumber': '','optionName': 'My Wallet ', 'expires': '12/26', 'amount': '349'},
    {'image': 'assets/design_1/Payment_4.png', 'acNumber': '','optionName': 'Cash', 'expires': '', 'amount': ''}
  ];

  int? selectedPaymentIndex;

  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: smallPadding, vertical: largePadding),
      child: Column(
        children: [

          // Section Title
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Select payment method',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: textColor_2,
                ),
              ),
              TextButton(
                onPressed: () {
                  if (kDebugMode) {
                    print('Click view all button');
                  }
                  // view all function
                },
                child: Text(
                  'View All',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: yellow_4,
                  ),
                ),
              )
            ],
          ),

          // Payment options
          Padding(
            padding:  EdgeInsets.only(top: smallPadding),
            child: Column(
              children: paymentOptions.asMap().entries.map((entry) {
                int index = entry.key;
                Map<String, dynamic> option = entry.value;
                return Padding(
                  padding: EdgeInsets.only(bottom: smallPadding),
                  child: Opacity(
                    opacity: selectedPaymentIndex == index ? 1.0 : 0.5,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          selectedPaymentIndex = index;
                        });
                        // Confirm function
                        if (kDebugMode) {
                          print('Clicked Payment option: $index');
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(screenWidth, 70),
                        backgroundColor: yellow_3,
                        textStyle: const TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                          side: BorderSide(color: yellow_4, width: 2.0),
                        ),
                      ),
                      child: Row(
                        children: [

                          // Payment option image
                          Image.asset(option['image']),

                          // Account number/Name, date, amount
                          Padding(
                            padding: EdgeInsets.only(left: mediumPadding),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                // Payment option name
                                if (option['optionName'] != '')
                                  Text(
                                  option['optionName'],
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: textColor_2,
                                  ),
                                ),

                                // Account number
                                if (option['acNumber'] != '')
                                  Text(
                                  option['acNumber'],
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: textColor_2,
                                  ),
                                ),


                                // Expires Date
                                if (option['expires'] != '')
                                  Text(
                                  'Expires: ${option['expires']}',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: textColor_2,
                                  ),
                                ),

                                // Amount
                                if (option['amount'] != '')
                                  Text(
                                  '\$ ${option['amount']}',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: textColor_2,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
