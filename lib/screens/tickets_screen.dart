import 'package:booktickets/screens/ticket_view.dart';
import 'package:booktickets/utils/app_info_list.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:booktickets/widget/ticket_tabs.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TicketsScreen extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool? isColor;
  const TicketsScreen({super.key, required this.ticket, this.isColor});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ListView(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            children: [
              const Gap(40),
              Text(
                "Tickets",
                style: Styles.headLineStyle,
              ),
              const Gap(20),
              const AppTicketsTabs(firstTab: "Upcomming", secondTab: "Previus"),
              const Gap(20),
              Container(
                padding: const EdgeInsets.only(left: 15),
                child: TicketView(ticket: ticketList[0]),
              )
            ],
          )
        ],
      ),
    );
  }
}
