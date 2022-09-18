import 'package:book_your_tickets/screens/ticket_view.dart';
import 'package:book_your_tickets/utils/app_info_list.dart';
import 'package:book_your_tickets/utils/app_layout.dart';
import 'package:book_your_tickets/utils/app_styles.dart';
import 'package:book_your_tickets/widgets/two_tabs_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TicketsScreen extends StatelessWidget {
  const TicketsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(children: [
        ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          children: [
            const Gap(40),
            Text('Tickets', style: Styles.headLineStyle1),
            const Gap(20),
            const TwoTabsWidget(firstTab: 'Upcoming', secondTab: 'Previous'),
            const Gap(20),
            Container(
              padding: const EdgeInsets.only(left: 15),
              child: TicketView(ticket: ticketList[0], fromHome: false),
            ),
            Container(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Column(
                          children: [
                            Text('Flutter DB', style: Styles.headLineStyle3),
                            const Gap(5),
                            Text('Passenger', style: Styles.headLineStyle3),
                            // Video time 4:57:40
                          ],
                        )
                      ],
                    )
                  ],
                )),
          ],
        )
      ]),
    );
  }
}
