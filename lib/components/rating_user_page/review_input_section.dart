import 'package:flutter/material.dart';

import '../../styles/style.dart';

class ReviewInputSection extends StatefulWidget {
  const ReviewInputSection({super.key});

  @override
  State<ReviewInputSection> createState() => _ReviewInputSectionState();
}

class _ReviewInputSectionState extends State<ReviewInputSection> {


  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      width: screenWidth*0.9,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xFFEFF2F4),
      ),
      child: Padding(
        padding: EdgeInsets.all(smallPadding),
        child: TextField(

          maxLines: null,
          decoration: InputDecoration(
            hintText: 'Write Your Experience',
            hintStyle: TextStyle(
                fontFamily: 'PlusJakartaSans',
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: textColor_4
            ),
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
