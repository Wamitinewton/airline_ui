import 'package:airline_ui/utils/layouts.dart';
import 'package:airline_ui/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

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
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              // color: Colors.black,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: isOrange == false
                      ? Colors.white
                      : const Color(0xFFF37B67),
                  boxShadow: isOrange == true
                      ? []
                      : [
                          BoxShadow(
                              color: Colors.grey.shade100,
                              blurRadius: 2,
                              spreadRadius: 2),
                        ],
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(21),
                    topRight: Radius.circular(21),
                  )),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text(
                        'NYC',
                        style: isOrange == false
                            ? Styles.headline3Style
                            : Styles.headline3Style
                                .copyWith(color: Colors.white),
                      ),
                      const Spacer(),
                      Container(
                        padding: const EdgeInsets.all(3),
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: isOrange == false
                                    ? const Color(0xFF8ACCF7)
                                    : Colors.white,
                                width: 2.5),
                            shape: BoxShape.circle),
                      ),
                      Expanded(
                          child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Stack(
                          children: [
                            SizedBox(
                              height: 24,
                              child: LayoutBuilder(
                                  builder: (context, constraints) {
                                return Flex(
                                  direction: Axis.horizontal,
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: List.generate(
                                    (constraints.constrainWidth() / 6).floor(),
                                    (index) => SizedBox(
                                      height: 1,
                                      width: 3,
                                      child: DecoratedBox(
                                        decoration: BoxDecoration(
                                            color: isOrange == true
                                                ? Colors.white
                                                : Colors.grey.shade300),
                                      ),
                                    ),
                                  ),
                                );
                              }),
                            ),
                            Center(
                              child: Transform.rotate(
                                angle: 1.5,
                                child: Icon(
                                  Icons.local_airport_rounded,
                                  color: isOrange == false
                                      ? const Color(0xFF8ACCF7)
                                      : Colors.white,
                                  size: 24,
                                ),
                              ),
                            )
                          ],
                        ),
                      )),
                      Container(
                        padding: const EdgeInsets.all(3),
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: isOrange == false
                                    ? const Color(0xFF8ACCF7)
                                    : Colors.white,
                                width: 2.5),
                            shape: BoxShape.circle),
                      ),
                      const Spacer(),
                      Text(
                        'LDN',
                        style: isOrange == false
                            ? Styles.headline3Style
                            : Styles.headline3Style
                                .copyWith(color: Colors.white),
                      )
                    ],
                  ),
                  const Gap(1),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      SizedBox(
                        width: 100,
                        child: Text(
                          'New-York',
                          style: isOrange == false
                              ? Styles.subtitle1Style
                              : Styles.subtitle1Style
                                  .copyWith(color: Colors.white),
                        ),
                      ),
                      Text(
                        '8H 30M',
                        style: isOrange == false
                            ? Styles.headline3Style
                                .copyWith(fontWeight: FontWeight.bold)
                            : Styles.subtitle1Style.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 100,
                        child: Text(
                          'London',
                          textAlign: TextAlign.end,
                          style: isOrange == false
                              ? Styles.subtitle1Style
                              : Styles.subtitle1Style
                                  .copyWith(color: Colors.white),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              color: isOrange == false ? Colors.white : const Color(0xFFF37B67),
              child: Row(
                children: <Widget>[
                  SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10)),
                            color: isOrange == true
                                ? Colors.white
                                : Colors.grey.shade200)),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: LayoutBuilder(
                        builder: (context, constraints) {
                          return Flex(
                            direction: Axis.horizontal,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: List.generate(
                                (constraints.constrainWidth() / 15).floor(),
                                (index) => SizedBox(
                                      height: 1,
                                      width: 5,
                                      child: DecoratedBox(
                                        decoration: BoxDecoration(
                                            color: isOrange == true
                                                ? Colors.white
                                                : Colors.grey.shade300),
                                      ),
                                    )),
                          );
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10)),
                            color: isOrange == true
                                ? Colors.white
                                : Colors.grey.shade200)),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
