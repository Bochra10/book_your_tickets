import 'package:book_your_tickets/utils/app_styles.dart';
import 'package:flutter/material.dart';

class TitleAndMoreWidget extends StatelessWidget {
  final String title;
  final String moreText;
  const TitleAndMoreWidget(
      {Key? key, required this.title, required this.moreText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: Styles.headLineStyle2),
        InkWell(
          onTap: () {},
          child: Text(
            moreText,
            style: Styles.textStyle.copyWith(color: Styles.primaryColor),
          ),
        )
      ],
    );
  }
}
