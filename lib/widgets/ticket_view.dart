import 'package:airline_ui/utils/layouts.dart';
import 'package:flutter/material.dart';

class TicketView extends StatelessWidget {
  final bool isOrange;
  const TicketView({super.key, required this.isOrange});

  @override
  Widget build(BuildContext context) {
    final size = LayOuts.getSize(context);
    return SizedBox(
      width: size.width * 0.85,
      height: 200,
      child: Container(
        margin: const EdgeInsets.only(right: 15),
        
      ),
    );
  }
}
