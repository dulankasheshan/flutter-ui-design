
//Design 03

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:intern_test/components/referrals_page/custom_app_bar.dart';
import 'package:intern_test/components/referrals_page/driver_details.dart';
import 'package:intern_test/styles/style.dart';

class ReferralsPage extends StatefulWidget {
  const ReferralsPage({super.key});

  @override
  State<ReferralsPage> createState() => _ReferralsPageState();
}

class _ReferralsPageState extends State<ReferralsPage> {
  @override
  Widget build(BuildContext context) {

    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return  SafeArea(
      child:  Scaffold(
        backgroundColor: background_2,
        body:  Stack(
          children: [
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Image.asset(
                'assets/design_3/SkyLine.png',
               // width: screenWidth,
                height: screenHeight*0.5,
                fit: BoxFit.cover,
              ),
            ),
            SingleChildScrollView(
                child: Column(
                  children: [

                    //Custom app bar
                    const CustomAppBar(),

                    SizedBox(height: largePadding,),

                    Text('My QR Code',
                      style: TextStyle(
                          fontFamily: 'PlusJakartaSans',
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: textColor_4
                      ),),

                    SizedBox(height: largePadding,),

                    //Driver details section
                    DriverDetails(
                        driverImageUrl: 'assets/design_2/Driver.png',
                        driverName: 'Alexander Young',
                        driverUsername: '@y_alex',
                        qrCodeUrl: 'assets/design_3/qr_code.png'
                    ),

                    SizedBox(height: largePadding,),

                    //Message
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal:mediumPadding),
                      child: Text('Want to unlock rewards? Share your code! Have your friends scan this QR code.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'PlusJakartaSans',
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: textColor_4
                        ),),
                    ),

                    SizedBox(height: screenHeight*0.07,),

                    Padding(
                      padding: EdgeInsets.all(smallPadding),
                      child: Row(
                        children: [
                          const Expanded(child: Divider(color: Color(0xFFADB5BD),)),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: smallPadding),
                            child: const Text('or'),
                          ),
                          const Expanded(child: Divider(color: Color(0xFFADB5BD),)),
                        ],
                      ),
                    ),

                    //Scan QR Code Button
                    Padding(
                      padding:  EdgeInsets.all(smallPadding),
                      child: SizedBox(
                        child: ElevatedButton(
                          onPressed: () {
                            //Confirm function
                            if (kDebugMode) {
                              print('Click Scan QR Code button');
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            fixedSize:  Size(screenWidth, 65),
                            backgroundColor: yellow_2,
                            textStyle: const TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child:   Text('Scan QR Code',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: textColor_4,
                            ),),
                        ),
                      ),
                    ),

                    SizedBox(height: screenHeight*0.07,),

                  ],
                )
            ),
          ],
        )
      ),
    );
  }

}
