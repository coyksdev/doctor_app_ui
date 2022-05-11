import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:gap/gap.dart';

import 'package:doctor_app_ui/models/doctor.dart';

class DoctorStatusStyle {
  final Color backgroundColor;
  final Color textColor;

  DoctorStatusStyle(
    this.backgroundColor,
    this.textColor,
  );
}

class DoctorsListItem extends StatelessWidget {
  const DoctorsListItem({
    Key? key,
    required this.doctor,
    required this.onPressed,
  }) : super(key: key);

  final Doctor doctor;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Hero(
              tag: doctor.image,
              child: Image.asset(doctor.image, width: 60, height: 60),
            ),
          ),
          const Gap(10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  doctor.name,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const Gap(10),
                Row(
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
                const Gap(10),
                Row(
                  children: [
                    RatingBar.builder(
                      itemSize: 20,
                      initialRating: doctor.rating,
                      minRating: 1,
                      direction: Axis.horizontal,
                      itemCount: 5,
                      itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                      itemBuilder: (context, _) => const Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {
                        // debugPrint(rating);
                      },
                    ),
                    const Gap(10),
                    Text('(${doctor.reviews})'),
                    const Spacer(),
                    Builder(
                      builder: (context) {
                        final statusStyle = doctor.isOpen
                            ? DoctorStatusStyle(
                                const Color(0xffCCF5E1),
                                const Color(0xFF00CC6A),
                              )
                            : DoctorStatusStyle(
                                const Color(0xFFF7E4D9),
                                const Color(0xFFCC4900),
                              );

                        return Container(
                          width: 60,
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: statusStyle.backgroundColor,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            doctor.isOpen ? 'Open' : 'Closed',
                            style: TextStyle(
                              color: statusStyle.textColor,
                            ),
                          ),
                        );
                      },
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
