import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Section extends StatelessWidget {
  const Section({
    Key? key,
    required this.title,
    required this.child,
  }) : super(key: key);

  final String title;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            ),
            const Text(
              'View all',
              style: TextStyle(
                color: Colors.blue,
              ),
            ),
          ],
        ),
        const Gap(16),
        Container(
          child: child,
        ),
      ],
    );
  }
}
