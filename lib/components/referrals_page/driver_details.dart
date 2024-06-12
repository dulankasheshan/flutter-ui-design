import 'package:flutter/material.dart';

import '../../styles/style.dart';

class DriverDetails extends StatelessWidget {
  String driverImageUrl;
  String driverName;
  String driverUsername;
  String qrCodeUrl;
   DriverDetails({
    super.key,
    required this.driverImageUrl,
    required this.driverName,
    required this.driverUsername,
    required this.qrCodeUrl,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Column(
      children: [
        SizedBox(height: largePadding,),

        //Driver image
        CircleAvatar(
          backgroundColor: Colors.black,
          radius: screenWidth * 0.07,
          backgroundImage:  AssetImage(driverImageUrl),
        ),

        SizedBox(height: smallPadding,),

        //Driver name
        Text(driverName,
          style: TextStyle(
              fontFamily: 'PlusJakartaSans',
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: textColor_4
          ),),

        //Username
        Text(driverUsername,
          style: TextStyle(
              fontFamily: 'PlusJakartaSans',
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: textColor_4
          ),),

        SizedBox(height: largePadding,),

        //QR code
        Container(
          width: screenWidth*0.5,
          height: screenWidth*0.5,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            //color: Colors.grey
          ),

          child: Image.asset(qrCodeUrl),
        ),
      ],
    );
  }
}
