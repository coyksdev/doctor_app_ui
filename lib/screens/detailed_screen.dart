import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';

import 'package:doctor_app_ui/models/doctor.dart';

class OtherInfo {
  final String label;
  final String value;

  OtherInfo({
    required this.label,
    required this.value,
  });
}

class DetailedScreen extends StatelessWidget {
  const DetailedScreen({
    Key? key,
    required this.doctor,
  }) : super(key: key);

  final Doctor doctor;

  @override
  Widget build(BuildContext context) {
    final otherInfo = [
      OtherInfo(
        label: 'Experience',
        value: doctor.experience.toString(),
      ),
      OtherInfo(
        label: 'Reviews',
        value: doctor.reviews.toString(),
      ),
      OtherInfo(
        label: 'Rating',
        value: doctor.rating.toString(),
      ),
    ];

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          padding: const EdgeInsets.only(left: 18),
          icon: SvgPicture.asset(
            'assets/images/icons/back.svg',
            height: 50,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(
              tag: doctor.image,
              child: Container(
                height: 50.h,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(doctor.image),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const Gap(20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                doctor.name,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            const Gap(12),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Text(
                    doctor.expertise,
                    style: const TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  const Gap(5),
                  Container(
                    height: 5,
                    width: 5,
                    decoration: const BoxDecoration(
                      color: Colors.grey,
                      shape: BoxShape.circle,
                    ),
                  ),
                  const Gap(5),
                  Text(
                    doctor.clinic,
                    style: const TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            const Gap(12),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                doctor.description,
                textAlign: TextAlign.left,
                style: const TextStyle(height: 1.5),
              ),
            ),
            const Gap(18),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(
                otherInfo.length,
                (index) {
                  final oI = otherInfo[index];

                  return Column(
                    children: [
                      Text(
                        oI.label,
                        style: const TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      const Gap(12),
                      Text(
                        oI.value,
                        style: const TextStyle(
                            fontSize: 24, color: Color(0xFF2B92E4)),
                      ),
                    ],
                  );
                },
              ),
            ),
            const Gap(12),
            Padding(
              padding: const EdgeInsets.all(18),
              child: Row(
                children: [
                  OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      backgroundColor: const Color(0xFF4485FD),
                    ),
                    child: SvgPicture.asset(
                      'assets/images/icons/comment.svg',
                      color: Colors.white,
                    ),
                  ),
                  const Gap(12),
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        backgroundColor: const Color(0xFF00CC6A),
                      ),
                      child: const Text(
                        'Make an Appointment',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
