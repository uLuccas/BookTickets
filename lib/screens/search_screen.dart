import 'package:booktickets/utils/app_styles.dart';
import 'package:booktickets/widget/double_text_widget.dart';
import 'package:booktickets/widget/icon_text_widget.dart';
import 'package:booktickets/widget/ticket_tabs.dart';
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
          const AppTicketsTabs(
              firstTab: "Airlines Tickets", secondTab: "Hotels"),
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
          const Gap(40),
          const AppDoubleTextWidget(
              bigText: "Upcomming Flights", smallText: "view all"),
          const Gap(15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 400,
                width: size.width * 0.42,
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade200,
                          blurRadius: 1,
                          spreadRadius: 1)
                    ]),
                child: Column(
                  children: [
                    Container(
                      height: 190,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('assets/images/sit.jpg'))),
                    ),
                    const Gap(12),
                    Text(
                      "20% de Off em algum produto ai que tem no voo 747 da TAM",
                      style: Styles.headLineStyle2,
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  Container(
                    width: size.width * 0.44,
                    height: 164,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 15),
                    decoration: BoxDecoration(
                        color: const Color(0xFF3AB8B8),
                        borderRadius: BorderRadius.circular(18)),
                    child: Column(children: [
                      Text(
                        "Discount\nFor alguma coisa",
                        style: Styles.headLineStyle2.copyWith(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                      const Gap(10),
                      Text(
                        "Take of\nTreco com bom !!",
                        style: Styles.headLineStyle2.copyWith(
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                            fontSize: 18),
                      ),
                    ]),
                  ),
                  const Gap(16),
                  Container(
                    width: size.width * 0.44,
                    height: 210,
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        color: const Color(0xFFEC6545)),
                    child: Column(
                      children: [
                        Text(
                          "Take negocio",
                          style: Styles.headLineStyle2.copyWith(
                              color: Colors.white, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        const Gap(5),
                        RichText(
                            text: const TextSpan(children: [
                          TextSpan(text: '🤞', style: TextStyle(fontSize: 35)),
                          TextSpan(text: '😎', style: TextStyle(fontSize: 40)),
                          TextSpan(text: '🤠', style: TextStyle(fontSize: 35)),
                        ]))
                      ],
                    ),
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
