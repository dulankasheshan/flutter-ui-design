import 'package:flutter/material.dart';

import '../../styles/style.dart';

class RentCarDetailCard extends StatelessWidget {
  String carName;
  String rateCount;
  String reviewCount;
  String imageUrl;

  RentCarDetailCard({
    super.key,
    required this.carName,
    required this.rateCount,
    required this.reviewCount,
    required this.imageUrl,

  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(smallPadding),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: yellow_3,
            border: Border.all(color: yellow_4)),
        child: Padding(
          padding:  EdgeInsets.all(mediumPadding),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //Name and Rating
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  //Name
                  Text(
                    carName,
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: textColor_2,
                    ),
                  ),

                  const SizedBox(height: 5,),

                  //Rating
                  Row(
                    children: [
                      Icon(Icons.star_rate_rounded,color: yellow_2,),
                      Text('$rateCount ($reviewCount reviews)',
                        maxLines: null,
                        style: const TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFFB8B8B8),
                        ),),
                    ],
                  )
                ],
              ),
              
              //Car image
              Image.asset(imageUrl)
            ],
          ),
        ),
      ),
    );
  }
}
