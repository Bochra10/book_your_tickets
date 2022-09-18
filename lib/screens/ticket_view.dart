import 'package:book_your_tickets/utils/app_layout.dart';
import 'package:book_your_tickets/utils/app_styles.dart';
import 'package:book_your_tickets/widgets/thick_circle.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool fromHome;
  const TicketView({Key? key, required this.ticket, required this.fromHome})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width * 0.85,
      height: 170,
      child: Container(
          margin: const EdgeInsets.only(right: 16),
          child: Column(
            children: [
              // Blue part
              Container(
                decoration: BoxDecoration(
                    color: fromHome ? const Color(0xFF526799) : Colors.white,
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(21),
                        topRight: Radius.circular(21))),
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(ticket['from']['code'],
                            style: fromHome
                                ? Styles.headLineStyle3
                                    .copyWith(color: Colors.white)
                                : Styles.headLineStyle3),
                        const Spacer(),
                        ThickCircle(noColor: fromHome),
                        Expanded(
                            child: Stack(children: [
                          SizedBox(
                            height: 24,
                            child: LayoutBuilder(
                              builder: (BuildContext context,
                                  BoxConstraints constraints) {
                                return Flex(
                                  direction: Axis.horizontal,
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: List.generate(
                                      (constraints.constrainWidth() / 6)
                                          .floor(),
                                      (index) => SizedBox(
                                            width: 3,
                                            height: 1,
                                            child: DecoratedBox(
                                                decoration: BoxDecoration(
                                                    color: fromHome
                                                        ? Colors.white
                                                        : Colors
                                                            .grey.shade300)),
                                          )),
                                );
                              },
                            ),
                          ),
                          Center(
                            child: Transform.rotate(
                              angle: 1.5,
                              child: Icon(
                                Icons.local_airport_rounded,
                                color: fromHome
                                    ? Colors.white
                                    : const Color(0xff8accf7),
                              ),
                            ),
                          ),
                        ])),
                        ThickCircle(noColor: fromHome),
                        const Spacer(),
                        Text(ticket['to']['code'],
                            style: fromHome
                                ? Styles.headLineStyle3
                                    .copyWith(color: Colors.white)
                                : Styles.headLineStyle3),
                      ],
                    ),
                    const Gap(3),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                            width: 100,
                            child: Text(
                              ticket['from']['name'],
                              style: fromHome
                                  ? Styles.headLineStyle4
                                      .copyWith(color: Colors.white)
                                  : Styles.headLineStyle4,
                            )),
                        Text(
                          ticket['flying_time'],
                          style: fromHome
                              ? Styles.headLineStyle4
                                  .copyWith(color: Colors.white)
                              : Styles.headLineStyle4,
                        ),
                        SizedBox(
                            width: 100,
                            child: Text(
                              ticket['from']['name'],
                              textAlign: TextAlign.end,
                              style: fromHome
                                  ? Styles.headLineStyle4
                                      .copyWith(color: Colors.white)
                                  : Styles.headLineStyle4,
                            )),
                      ],
                    )
                  ],
                ),
              ),
              // Orange separator part
              Container(
                color: fromHome ? Styles.orangeColor : Colors.white,
                child: Row(
                  children: [
                    const SizedBox(
                      height: 20,
                      width: 10,
                      child: DecoratedBox(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(10),
                                  bottomRight: Radius.circular(10)))),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: LayoutBuilder(
                          builder: (BuildContext context,
                              BoxConstraints constraints) {
                            return Flex(
                              direction: Axis.horizontal,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              mainAxisSize: MainAxisSize.max,
                              children: List.generate(
                                  (constraints.constrainWidth() / 15).floor(),
                                  (index) => SizedBox(
                                        width: 5,
                                        height: 1,
                                        child: DecoratedBox(
                                            decoration: BoxDecoration(
                                                color: fromHome
                                                    ? Colors.white
                                                    : Colors.grey.shade300)),
                                      )),
                            );
                          },
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                      width: 10,
                      child: DecoratedBox(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  bottomLeft: Radius.circular(10)))),
                    )
                  ],
                ),
              ),
              // Orange ticket info part
              Container(
                decoration: BoxDecoration(
                    color: fromHome ? Styles.orangeColor : Colors.white,
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(21),
                        bottomRight: Radius.circular(21))),
                padding: const EdgeInsets.only(
                    left: 16, top: 10, right: 16, bottom: 16),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              ticket['date'],
                              style: fromHome
                                  ? Styles.headLineStyle3
                                      .copyWith(color: Colors.white)
                                  : Styles.headLineStyle3,
                            ),
                            const Gap(5),
                            Text(
                              'Date',
                              style: fromHome
                                  ? Styles.headLineStyle4
                                      .copyWith(color: Colors.white)
                                  : Styles.headLineStyle4,
                            )
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              ticket['departure_time'],
                              style: fromHome
                                  ? Styles.headLineStyle3
                                      .copyWith(color: Colors.white)
                                  : Styles.headLineStyle3,
                            ),
                            const Gap(5),
                            Text(
                              'Departure time',
                              style: fromHome
                                  ? Styles.headLineStyle4
                                      .copyWith(color: Colors.white)
                                  : Styles.headLineStyle4,
                            )
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              ticket['number'].toString(),
                              style: fromHome
                                  ? Styles.headLineStyle3
                                      .copyWith(color: Colors.white)
                                  : Styles.headLineStyle3,
                            ),
                            const Gap(5),
                            Text(
                              'Number',
                              style: fromHome
                                  ? Styles.headLineStyle4
                                      .copyWith(color: Colors.white)
                                  : Styles.headLineStyle4,
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}
