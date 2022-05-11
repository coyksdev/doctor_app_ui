import 'package:flutter/material.dart';

import 'package:doctor_app_ui/models/service.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class ServicesItemWidget extends StatelessWidget {
  const ServicesItemWidget({
    Key? key,
    required this.service,
  }) : super(key: key);

  final Service service;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                color: Color(service.backgroundColor),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(
                child: SvgPicture.asset(
                  service.icon,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        const Gap(10),
        Text(
          service.name,
        ),
      ],
    );
  }
}
