import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../styles/style.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {

    return SizedBox(
      height: kToolbarHeight,
      child: Padding(
        padding: EdgeInsets.all(smallPadding),
        child: Row(
          children: [

            //Back button
            GestureDetector(
              onTap: (){
                if (kDebugMode) {
                  print('Back button click');
                }
              },
              child: Row(
                children: [
                  Icon(
                    Icons.arrow_back_ios_rounded,
                    color: textColor_3,
                  ),
                  const Text(
                    ' Back',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF414141),
                    ),
                  )

                ],
              ),
            ),

            const Spacer(),

            //Screen name
            Text('Request for rent',
              style: TextStyle(
                  fontFamily: 'Poppins',
                  color: textColor_3,
                  fontWeight: FontWeight.w600,
                  fontSize: 18
              ),),
            const Spacer(),

            //Add an invisible widget to center the text
            Opacity(
              opacity: 0,
              child: Row(
                children: [
                  Icon(
                    Icons.arrow_back_ios_rounded,
                    color: textColor_3,
                  ),
                  const Text(
                    ' Back',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF414141),
                    ),
                  )

                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
