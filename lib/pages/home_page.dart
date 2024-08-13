import 'package:airline_ui/utils/styles.dart';
import 'package:airline_ui/widgets/ticket_view.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final FocusNode myFocuseNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: GestureDetector(
        onTap: () {
          myFocuseNode.unfocus();
        },
        child: ListView(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  const Gap(60),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Good Morning',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.grey.shade500),
                          ),
                          const Gap(4),
                          Text(
                            'TRAVEL DASH',
                            style: Styles.headline1Style,
                          )
                        ],
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: const Color(0xFFF37B67),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Image.asset('assets/images/dash.png'),
                      )
                    ],
                  ),
                  const Gap(25),
                  Container(
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        color: Color(0xFFF4F6FD)),
                    width: double.infinity,
                    height: 40,
                    child: TextFormField(
                      focusNode: myFocuseNode,
                      decoration: InputDecoration(
                          focusColor: Colors.grey,
                          fillColor: const Color(0xFFBFC2D5),
                          hintStyle: TextStyle(
                              color: Colors.grey.shade500,
                              fontSize: 15,
                              fontWeight: FontWeight.w500),
                          hintText: 'Search',
                          prefixIcon: const Icon(
                              color: Color(0xFFBFC2D5),
                              FluentSystemIcons.ic_fluent_search_regular),
                          focusedBorder: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              borderSide: BorderSide(color: Colors.grey)),
                          enabledBorder: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              borderSide:
                                  BorderSide(color: Color(0xFFBFC2D5)))),
                    ),
                  ),
                  const Gap(40),
                   Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Upcoming Flights',
                        style: Styles.headline2Style,
                      ),
                      InkWell(
                        child: Text(
                          'View all',
                          style: Styles.textStyle.copyWith(
                            color: Styles.primaryColor,
                            fontSize: 19
                          ),
                        ),
                      )
                    ],
                  ),
                  TicketView(
                    isOrange: true,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
