import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticketbooking/utils/app_layout.dart';
import 'package:ticketbooking/utils/app_styles.dart';
import 'package:ticketbooking/widgets/double_text_widget.dart';
import 'package:ticketbooking/widgets/icon_text_widget.dart';
import 'package:ticketbooking/widgets/ticket_tabs.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: styles.secondaryColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          const Gap(40),
          Text(
            "What are\nyou looking for?",
            style: styles.headlineStyle1.copyWith(fontSize: 35),
          ),
          const Gap(20),
          AppTicketTabs(
            firstTab: "Airline Ticket",
            secondTab: "Hotels",
          ),
          Gap(25),
          const AppIconText(
              icon: Icons.flight_takeoff_rounded, text: 'Departure'),
          Gap(20),
          const AppIconText(icon: Icons.flight_land_rounded, text: 'Arrivals'),
          Gap(25),
          Container(
            padding: EdgeInsets.symmetric(vertical: 18, horizontal: 15),
            decoration: BoxDecoration(
              color: Color(0xD91130CE),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Text(
                'find tickets',
                style: styles.textStyle.copyWith(color: Colors.white),
              ),
            ),
          ),
          Gap(40),
          const AppDoubleTextWidget(
            bigText: "Upcoming Flights",
            smallText: "View all",
          ),
          Gap(15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 425,
                width: size.width * 0.42,
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 1,
                        spreadRadius: 1,
                      )
                    ]),
                child: Column(
                  children: [
                    Container(
                      height: 190,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            "assets/images/sit.jpeg",
                          ),
                        ),
                      ),
                    ),
                    Gap(12),
                    Text(
                      "20% discount on the early booking of this flight. Don't miss.",
                      style: styles.headlineStyle2,
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: size.width * 0.44,
                        height: 200,
                        decoration: BoxDecoration(
                          color: Color(0xFF3AB8B8),
                          borderRadius: BorderRadius.circular(18),
                        ),
                        padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Discount\nfor survey",
                              style: styles.headlineStyle2.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Gap(10),
                            Text(
                              "Take the survey about our services and get discount",
                              style: styles.headlineStyle2.copyWith(
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            )
                          ],
                        ),
                      ),
                      Positioned(
                        right: -45,
                        top: -40,
                        child: Container(
                          padding: EdgeInsets.all(30),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border:
                                Border.all(width: 18, color: Color(0xFF18999)),
                            color: Color.fromARGB(255, 8, 216, 213),
                          ),
                        ),
                      )
                    ],
                  ),
                  Gap(15),
                  Container(
                    width: size.width * 0.44,
                    height: 210,
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        color: const Color(0xFFEC6545)),
                    child: Column(
                      children: [
                        Text(
                          "Take love",
                          style: styles.headlineStyle2.copyWith(
                              color: Colors.white, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        Gap(5),
                        RichText(
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                text: '🥰',
                                style: TextStyle(
                                  fontSize: 38,
                                ),
                              ),
                              TextSpan(
                                text: '😘',
                                style: TextStyle(
                                  fontSize: 50,
                                ),
                              ),
                              TextSpan(
                                text: '😍',
                                style: TextStyle(
                                  fontSize: 38,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
