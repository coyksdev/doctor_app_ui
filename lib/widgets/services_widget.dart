import 'package:flutter/material.dart';

import 'package:doctor_app_ui/models/service.dart';
import 'package:doctor_app_ui/widgets/service_item_widget.dart';

final List<Service> services = [
  Service(
    name: 'Consultation',
    icon: 'assets/images/icons/stethoscope.svg',
    backgroundColor: 0xFF4485FD,
  ),
  Service(
    name: 'Dental',
    icon: 'assets/images/icons/teeth.svg',
    backgroundColor: 0xFFA584FF,
  ),
  Service(
    name: 'Heart',
    icon: 'assets/images/icons/heart.svg',
    backgroundColor: 0xFFFF7854,
  ),
  Service(
    name: 'Hospitals',
    icon: 'assets/images/icons/clinic.svg',
    backgroundColor: 0xFFFEA725,
  ),
  Service(
    name: 'Medicines',
    icon: 'assets/images/icons/medicine.svg',
    backgroundColor: 0xFF00CC6A,
  ),
  Service(
    name: 'Physicians',
    icon: 'assets/images/icons/care.svg',
    backgroundColor: 0xFF05D1ED,
  ),
  Service(
    name: 'Skin',
    icon: 'assets/images/icons/bandage.svg',
    backgroundColor: 0xFFFD44B3,
  ),
  Service(
    name: 'Surgeon',
    icon: 'assets/images/icons/syringe.svg',
    backgroundColor: 0xFFFD4444,
  ),
];

class ServicesWidget extends StatelessWidget {
  const ServicesWidget({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return ServicesItemWidget(
            service: services[index],
          );
        },
        itemCount: services.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          childAspectRatio: 3 / 4,
          crossAxisSpacing: 6,
          mainAxisSpacing: 10,
        ),
      ),
    );
  }
}
