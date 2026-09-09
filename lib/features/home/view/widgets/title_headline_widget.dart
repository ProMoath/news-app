import 'package:flutter/material.dart';
class TitleHeadlineWidget extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const TitleHeadlineWidget(
      {super.key, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: Theme
              .of(context)
              .textTheme
              .titleLarge,
        ),
        const Spacer(),
        TextButton(
          onPressed: onTap,
          child: Text(
            'View All',
            style: Theme
                .of(context)
                .textTheme
                .titleSmall,
          ),
        )
      ],
    );
  }
}
