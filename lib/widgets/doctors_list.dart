import 'package:doctor_app_ui/models/doctor.dart';
import 'package:doctor_app_ui/screens/detailed_screen.dart';
import 'package:doctor_app_ui/widgets/doctors_list_item.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

final List<Doctor> doctors = [
  Doctor(
    name: 'Dr. Gilang Segara Bening',
    description:
        "Duis proident voluptate eu quis ex commodo veniam ad Lorem elit mollit. Qui minim sit amet commodo quis duis deserunt pariatur excepteur exercitation. Dolore occaecat sint elit dolor minim laborum qui reprehenderit dolor pariatur elit exercitation aute excepteur.",
    image: 'assets/images/doctors/doctor_1.png',
    expertise: 'Heart',
    reviews: 1221,
    rating: 5,
    clinic: 'Persahabatan Hospital',
    isOpen: true,
    experience: 1,
  ),
  Doctor(
    name: 'Dr. Shabil Chan',
    description:
        "Duis proident voluptate eu quis ex commodo veniam ad Lorem elit mollit. Qui minim sit amet commodo quis duis deserunt pariatur excepteur exercitation. Dolore occaecat sint elit dolor minim laborum qui reprehenderit dolor pariatur elit exercitation aute excepteur.",
    image: 'assets/images/doctors/doctor_2.png',
    expertise: 'Dental',
    reviews: 4,
    rating: 5,
    clinic: 'Columbia Asia Hospital',
    isOpen: true,
    experience: 3,
  ),
  Doctor(
    name: 'Dr. Mustakim',
    description:
        "Duis proident voluptate eu quis ex commodo veniam ad Lorem elit mollit. Qui minim sit amet commodo quis duis deserunt pariatur excepteur exercitation. Dolore occaecat sint elit dolor minim laborum qui reprehenderit dolor pariatur elit exercitation aute excepteur.",
    image: 'assets/images/doctors/doctor_3.png',
    expertise: 'Eye',
    reviews: 762,
    rating: 5,
    clinic: 'Salemba Carolus Hospital',
    isOpen: true,
    experience: 4,
  ),
  Doctor(
    name: 'Dr. Suprihatini',
    description:
        "Duis proident voluptate eu quis ex commodo veniam ad Lorem elit mollit. Qui minim sit amet commodo quis duis deserunt pariatur excepteur exercitation. Dolore occaecat sint elit dolor minim laborum qui reprehenderit dolor pariatur elit exercitation aute excepteur.",
    image: 'assets/images/doctors/doctor_4.png',
    expertise: 'Heart',
    reviews: 762,
    rating: 5,
    clinic: 'Salemba Carolus Hospital',
    isOpen: false,
    experience: 3,
  ),
];

class DoctorsList extends StatelessWidget {
  const DoctorsList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: doctors.length,
      separatorBuilder: (context, index) => const Gap(18),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return DoctorsListItem(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return DetailedScreen(
                    doctor: doctors[index],
                  );
                },
              ),
            );
          },
          doctor: doctors[index],
        );
      },
    );
  }
}
