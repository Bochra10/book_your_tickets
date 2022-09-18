import 'package:book_your_tickets/utils/app_layout.dart';
import 'package:book_your_tickets/utils/app_styles.dart';
import 'package:book_your_tickets/widgets/icon_text_widget.dart';
import 'package:book_your_tickets/widgets/title_and_more_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gap/gap.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          children: [
            const Gap(40),
            Text(
              'What are\nyou looking for?',
              style: Styles.headLineStyle1.copyWith(fontSize: 36),
            ),
            const Gap(20),
            // Airline tickets and hotels
            FittedBox(
              child: Container(
                padding: const EdgeInsets.all(3.5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: const Color(0xFFF4F6FD)),
                child: Row(
                  children: [
                    // Airline tickets
                    Container(
                      width: size.width * .44,
                      padding: const EdgeInsets.symmetric(vertical: 7),
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.horizontal(
                              left: Radius.circular(50)),
                          color: Colors.white),
                      child: const Center(child: Text('Airline tickets')),
                    ),
                    // Hotels
                    Container(
                      width: size.width * .44,
                      padding: const EdgeInsets.symmetric(vertical: 7),
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.horizontal(
                              right: Radius.circular(50)),
                          color: Colors.transparent),
                      child: const Center(child: Text('Hotels')),
                    ),
                  ],
                ),
              ),
            ),
            const Gap(25),
            const IconTextWidget(
                icon: Icons.flight_takeoff_rounded, text: 'Departure'),
            const Gap(20),
            const IconTextWidget(
                icon: Icons.flight_land_rounded, text: 'Arrival'),
            const Gap(25),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xD91130CE)),
              child: Center(
                  child: Text("find tickets",
                      style: Styles.textStyle.copyWith(color: Colors.white))),
            ),
            const Gap(25),
            // Upcoming flights
            const TitleAndMoreWidget(
                title: 'Upcoming Flights', moreText: 'View all'),
            const Gap(15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // left column
                Container(
                  height: 400,
                  width: size.width * .42,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.shade200,
                            blurRadius: 1,
                            spreadRadius: 1)
                      ]),
                  child: Column(
                    children: [
                      // image
                      Container(
                        height: 190,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('assets/images/sit.jpg'))),
                      ),
                      const Gap(12),
                      Text(
                        '20% discount on the early booking of this flight!',
                        style: Styles.headLineStyle2,
                      )
                    ],
                  ),
                ),
                // right column
                Column(
                  children: [
                    // first element in the column
                    Stack(
                      children: [
                        Container(
                          width: size.width * .44,
                          height: 180,
                          decoration: BoxDecoration(
                              color: const Color(0xFF3Ab8b8),
                              borderRadius: BorderRadius.circular(18)),
                          padding: const EdgeInsets.symmetric(
                              vertical: 15, horizontal: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Discount\nfor survey',
                                style: Styles.headLineStyle2.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              const Gap(10),
                              Text(
                                'Take the survey about our services and get discount',
                                style: Styles.headLineStyle2.copyWith(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                    fontSize: 18),
                              ),
                            ],
                          ),
                        ),
                        // top right background decoration
                        Positioned(
                          right: -45,
                          top: -40,
                          child: Container(
                            padding: const EdgeInsets.all(30),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    width: 18, color: const Color(0xFF189999)),
                                color: Colors.transparent),
                          ),
                        )
                      ],
                    ),
                    const Gap(18),
                    // second element in the column
                    Container(
                      width: size.width * .44,
                      height: 200,
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          color: const Color(0xFFEC6545)),
                      child: Column(
                        children: [
                          Text(
                            'Take love',
                            textAlign: TextAlign.center,
                            style: Styles.headLineStyle2.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          const Gap(5),
                          RichText(
                              text: const TextSpan(children: [
                            TextSpan(
                                text: '😍', style: TextStyle(fontSize: 28)),
                            TextSpan(
                                text: '🥰', style: TextStyle(fontSize: 40)),
                            TextSpan(
                                text: '😘', style: TextStyle(fontSize: 28)),
                          ]))
                        ],
                      ),
                    )
                  ],
                ),
              ],
            )
          ]),
    );
  }
}
