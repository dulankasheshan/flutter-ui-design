import 'package:flutter/material.dart';

import '../../styles/style.dart';
import 'dot_line_painter.dart';

class LocationTile extends StatelessWidget {
  String imageUrl;
  String tileName;
  String address;
  String distance;
  bool isFirstStep;
  bool isLastStep;

  LocationTile({
    super.key,
    required this.imageUrl,
    required this.tileName,
    required this.address,
    this.distance = '',
    this.isFirstStep = false,
    this.isLastStep = false,
  });

  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Padding(
      padding:  EdgeInsets.all(smallPadding),
      child: SizedBox(
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    // Dotted line above the image
                    if(isLastStep)
                      RotationTransition(
                        turns: const AlwaysStoppedAnimation(90 / 360), // Rotate 90 degrees
                        child: CustomPaint(
                          size: Size(screenHeight * 0.04, 1), // Width and height of the dotted line
                          painter: DottedLinePainter(
                            dotSpacing: 7.0,
                            dotRadius: 2.0,
                            color: yellow_4,
                          ),
                        ),
                      ),

                    //Location image
                    Image.asset(imageUrl),

                    // Dotted line below the image
                    if(isFirstStep)
                    Padding(
                      padding:  const EdgeInsets.only(top: 20),
                      child: RotationTransition(
                        turns: const AlwaysStoppedAnimation(90 / 360), // Rotate 90 degrees
                        child: CustomPaint(
                          size: Size(screenHeight * 0.04, 1), // Width and height of the dotted line
                          painter: DottedLinePainter(
                            dotSpacing: 7.0,
                            dotRadius: 2.0,
                            color: yellow_4,
                          ),
                        ),
                      ),
                    ),

                  ],
                ),

                //Name and address
                SizedBox(
                  width: screenWidth * 0.65,
                  child: Padding(
                    padding: EdgeInsets.only(left: smallPadding),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            //Title
                            Text(tileName,
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: textColor_2,
                              ),),

                          ],
                        ),
                        //Address
                        Text(address,
                          maxLines: null,
                          style: const TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFFB8B8B8),
                          ),),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            //Distance
            Text(distance,
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: textColor_2,
              ),),
          ],
        ),
      ),
    );
  }
}