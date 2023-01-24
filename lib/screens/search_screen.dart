import 'package:booktickets/utils/app_styles.dart';
import 'package:booktickets/widget/icon_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_layout.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          const Gap(40),
          Text(
            'What are\nyou looking for?',
            style: Styles.headLineStyle.copyWith(fontSize: 35),
          ),
          const Gap(20),
          Container(
            padding: const EdgeInsets.all(3.5),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(50), right: Radius.circular(50)),
              color: Color(0xFFF4F6FD),
            ),
            child: Row(children: [
              Container(
                padding: const EdgeInsets.symmetric(vertical: 7),
                width: size.width * .44,
                decoration: const BoxDecoration(
                    borderRadius:
                        BorderRadius.horizontal(left: Radius.circular(50)),
                    color: Colors.white),
                child: const Center(child: Text('Airlines Tickets')),
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 7),
                width: size.width * .44,
                decoration: const BoxDecoration(
                  borderRadius:
                      BorderRadius.horizontal(right: Radius.circular(50)),
                ),
                child: const Center(child: Text('Hotels')),
              ),
            ]),
          ),
          const Gap(25),
          const AppIconText(
              icon: Icons.flight_takeoff_rounded, text: 'Departure'),
          const Gap(20),
          const AppIconText(icon: Icons.flight_land_rounded, text: 'Arrival'),
          const Gap(25),
          Container(
            decoration: BoxDecoration(
              color: const Color(0xd91130ce),
              borderRadius: BorderRadius.circular(10),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 18),
            child: Center(
                child: Text(
              'Find Tickets',
              style: Styles.textStyle.copyWith(color: Colors.white),
            )),
          ),
        ],
      ),
    );
  }
}
