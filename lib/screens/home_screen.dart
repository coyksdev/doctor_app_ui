import 'package:doctor_app_ui/widgets/doctors_list.dart';
import 'package:doctor_app_ui/widgets/section.dart';
import 'package:doctor_app_ui/widgets/services_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          padding: const EdgeInsets.only(left: 18),
          onPressed: () {},
          icon: SvgPicture.asset(
            'assets/images/icons/burger_menu.svg',
            height: 50,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text.rich(
                TextSpan(
                  text: 'Find ',
                  children: [
                    TextSpan(
                      text: 'your doctor',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                  style: TextStyle(
                    fontSize: 34,
                    color: Colors.black,
                  ),
                ),
              ),
              const Gap(20),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  fillColor: Colors.grey.shade200,
                  filled: true,
                  hintText: 'Search for a doctor, a hospital, a medicine...',
                  suffixIcon: Padding(
                    padding: const EdgeInsets.all(12),
                    child: SizedBox(
                      child: SvgPicture.asset(
                        'assets/images/icons/search.svg',
                      ),
                    ),
                  ),
                ),
              ),
              const Gap(20),
              ServicesWidget(
                height: 30.h,
                width: 100.w,
              ),
              const Gap(20),
              const Section(
                title: 'Top Doctors',
                child: DoctorsList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
