//Design 01

import 'package:flutter/material.dart';
import 'package:intern_test/components/request_rent_page/custom_app_bar.dart';
import 'package:intern_test/components/request_rent_page/date_time_picker.dart';
import 'package:intern_test/components/request_rent_page/location_tile.dart';
import 'package:intern_test/components/request_rent_page/payment_methode_section.dart';
import 'package:intern_test/components/request_rent_page/rent_car_detail_card.dart';

import '../styles/style.dart';

class RequestRentPage extends StatefulWidget {
  const RequestRentPage({super.key});

  @override
  State<RequestRentPage> createState() => _RequestRentPageState();
}

class _RequestRentPageState extends State<RequestRentPage> {
  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        backgroundColor: background,
        body: SingleChildScrollView(
          child: Column(
            children: [
              //Custom app bar
              const CustomAppBar(),
              SizedBox( height: mediumPadding, ),

              //Locations tiles section
              LocationTile(
                isFirstStep: true,
                  imageUrl: 'assets/design_1/map_red.png',
                  tileName: 'Current location',
                  address: '2972 Westheimer Rd. Santa Ana, Illinois 85486'),
              LocationTile(
                isLastStep: true,
                imageUrl: 'assets/design_1/map_yellow.png',
                tileName: 'Office',
                address: '1901 Thornridge Cir. Shiloh, Hawaii 81063',
                distance: '1.1Km',
              ),

               SizedBox( height: mediumPadding, ),

              //Rent car detail card section
              RentCarDetailCard(
                carName: 'Mustang Shelby GT',
                rateCount: '4.9',
                reviewCount: '531',
                imageUrl: 'assets/design_1/Car.png',
              ),

               SizedBox( height: mediumPadding, ),

              //Date time and promo code section
              const DateTimePicker(),

               SizedBox( height: mediumPadding, ),


              //Payment methode select section
              const PaymentMethodeSection(),


              //Confirm button
              Padding(
                padding:  EdgeInsets.all(smallPadding),
                child: SizedBox(
                  child: ElevatedButton(
                    onPressed: () {
                      //Confirm function
                      print('Click Confirm Booking button');
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize:  Size(screenWidth, 65),
                      backgroundColor: yellow_1,
                      textStyle: const TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child:  const Text('Confirm Booking',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),),
                  ),
                ),
              ),

              SizedBox(height: largePadding,)

            ],
          ),
        ),
      ),
    );
  }
}
