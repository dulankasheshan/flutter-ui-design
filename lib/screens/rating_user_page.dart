import 'package:flutter/material.dart';

import '../components/rating_user_page/bottom_sheet_content.dart';

class RatingUserPage extends StatefulWidget {
  const RatingUserPage({super.key});



  @override
  State<RatingUserPage> createState() => _RatingUserPageState();
}

class _RatingUserPageState extends State<RatingUserPage> {

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _showPopup(context);
    });
  }


  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: screenHeight * 0.9,
            child: FractionalTranslation(
              translation: const Offset(0.0, -0.25),
              child: Image.asset(
                'assets/design_2/map.png',
                fit: BoxFit.cover,
              ),
            ),
          ),


          Positioned(
            top: screenHeight * 0.15,
            left: screenWidth * 0.1,
            child: Image.asset('assets/design_2/destination.png'),
          ),
        ],
      ),
    );
  }

  void _showPopup(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (BuildContext context) {
        double screenHeight = MediaQuery.of(context).size.height;
        double screenWidth = MediaQuery.of(context).size.width;

        return SizedBox(
            height: screenHeight * 0.85,
            width: double.infinity,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: screenHeight * 0.75,
                      width: screenWidth,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(top: screenHeight * 0.1),
                        child:
                            const SingleChildScrollView(child: BottomSheetContent()),
                      ),
                    )
                  ],
                ),

                //Driver image
                Positioned(
                  top: screenHeight * 0.03,
                  child: Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.black,
                        radius: screenHeight * 0.08,
                        backgroundImage:
                            const AssetImage('assets/design_2/Driver.png'),
                      ),
                    ],
                  ),
                ),
              ],
            ));
      },
    );
  }
}
