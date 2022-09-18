import 'package:book_your_tickets/screens/hotel_screen.dart';
import 'package:book_your_tickets/screens/ticket_view.dart';
import 'package:book_your_tickets/utils/app_info_list.dart';
import 'package:book_your_tickets/utils/app_styles.dart';
import 'package:book_your_tickets/widgets/title_and_more_widget.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Good morning',
                          style: Styles.headLineStyle3,
                        ),
                        const Gap(5),
                        Text(
                          'Book Tickets',
                          style: Styles.headLineStyle1,
                        )
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                              fit: BoxFit.fitHeight,
                              image: AssetImage('assets/images/img_1.png'))),
                    )
                  ],
                ),
                const Gap(25),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xFFF4F6FD)),
                  padding: const EdgeInsets.all(12),
                  child: Row(
                    children: [
                      const Icon(FluentSystemIcons.ic_fluent_search_regular,
                          color: Color(0xFFBFC205)),
                      Text('Search', style: Styles.headLineStyle4)
                    ],
                  ),
                ),
                const Gap(40),
                const TitleAndMoreWidget(
                    title: 'Upcoming Flights', moreText: 'View all'),
              ],
            ),
          ),
          const Gap(15),
          // Upcoming Flights list
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20),
            child: Row(
                children: ticketList
                    .map((ticket) => TicketView(ticket: ticket))
                    .toList()),
          ),
          const Gap(15),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child:
                const TitleAndMoreWidget(title: 'Hotels', moreText: 'View all'),
          ),
          const Gap(15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20),
            child: Row(
                children: hotelList
                    .map((hotel) => HotelScreen(hotel: hotel))
                    .toList()),
          )
        ],
      ),
    );
  }
}
