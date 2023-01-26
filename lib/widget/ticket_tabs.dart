import 'package:booktickets/utils/app_layout.dart';
import 'package:flutter/material.dart';

class AppTicketsTabs extends StatelessWidget {
  final String firstTab;
  final String secondTab;

  const AppTicketsTabs(
      {super.key, required this.firstTab, required this.secondTab});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return FittedBox(
      child: Container(
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
            child: Center(child: Text(firstTab)),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 7),
            width: size.width * .44,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.horizontal(right: Radius.circular(50)),
            ),
            child: Center(child: Text(secondTab)),
          ),
        ]),
      ),
    );
  }
}
