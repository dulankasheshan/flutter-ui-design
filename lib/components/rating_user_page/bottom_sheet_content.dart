import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../styles/style.dart';
import 'driver_tip_section.dart';
import 'review_input_section.dart';

class BottomSheetContent extends StatefulWidget {
  const BottomSheetContent({super.key});

  @override
  State<BottomSheetContent> createState() => _BottomSheetContentState();
}

class _BottomSheetContentState extends State<BottomSheetContent> {
  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: mediumPadding),
          child: Text(
            'Rate Your Experience!',
            style: TextStyle(
                fontFamily: 'PlusJakartaSans',
                fontSize: 22,
                fontWeight: FontWeight.w600,
                color: textColor_4),
          ),
        ),

        //Rating bar
        Padding(
          padding: EdgeInsets.symmetric(vertical: largePadding),
          child: RatingBar.builder(
            initialRating: 3,
            minRating: 1,
            direction: Axis.horizontal,
            allowHalfRating: true,
            itemCount: 5,
            itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
            itemBuilder: (context, _) => Icon(
              Icons.star,
              color: yellow_2,
            ),
            onRatingUpdate: (rating) {
              if (kDebugMode) {
                print(rating);
              }
            },
          ),
        ),

        //Review typing section
        Padding(
          padding: EdgeInsets.only(top: largePadding),
          child: const ReviewInputSection(),
        ),

        // Tip add section
        const DriverTipSection(),

        Padding(
          padding: EdgeInsets.all(smallPadding),
          child: SizedBox(
            child: ElevatedButton(
              onPressed: () {
                //Confirm function
                if (kDebugMode) {
                  print('Click Scan QR Code button');
                }
              },
              style: ElevatedButton.styleFrom(
                fixedSize: Size(screenWidth, 65),
                backgroundColor: yellow_2,
                textStyle: const TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Text(
                'Add Review',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: textColor_4,
                ),
              ),
            ),
          ),
        ),

        SizedBox(height: largePadding,)
      ],
    );
  }
}
