import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../styles/style.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(mediumPadding),
      child: Row(
        children: [
          GestureDetector(
              onTap: (){
                if (kDebugMode) {
                  print('Click back button');
                }
              },
              child: const Icon(Icons.arrow_back)
          ),
          const Spacer(),

          const Text('Referrals',
            style: TextStyle(
                fontFamily: 'PlusJakartaSans',
                fontSize: 22,
                fontWeight: FontWeight.w600
            ),),
          const Spacer(),

          //Invisible widget to center the title
          Opacity(
            opacity: 0,
              child: const Icon(Icons.arrow_back))
        ],
      ),
    );
  }
}
