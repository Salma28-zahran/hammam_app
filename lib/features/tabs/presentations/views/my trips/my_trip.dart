import 'package:flutter/material.dart';
import 'package:hammam_app/theme/app_theme.dart';

class MyTrip extends StatefulWidget {
  const MyTrip({super.key});

  @override
  State<MyTrip> createState() => _MyTripState();
}

class _MyTripState extends State<MyTrip> with SingleTickerProviderStateMixin {
  late TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: AppColor.white,
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: h * 0.005),
            child: TabBar(
              controller: _controller,
              indicatorColor: AppColor.primary,
              indicatorWeight: h * 0.004,
              labelStyle: TextStyle(fontSize: w * 0.04,),
              unselectedLabelStyle: TextStyle(fontSize: w * 0.04,),
              labelColor: AppColor.primary,
              unselectedLabelColor: Colors.grey,
              tabs: const [
                Tab(text: "Upcoming"),
                Tab(text: "Past"),
              ],
            ),
          ),

          Expanded(
            child: TabBarView(
              controller: _controller,
              children: [
                _buildEmptyBooking(
                  w: w,
                  h: h,
                  title: "No Upcoming Bookings",
                  sub:
                  "You currently have no upcoming bookings, to create a booking press \"Make / Retrieve Booking\"",
                ),
                _buildEmptyBooking(
                  w: w,
                  h: h,
                  title: "No Past Bookings",
                  sub:
                  "You currently have no past bookings, to create a booking press \"Make / Retrieve Booking\"",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildEmptyBooking({
    required String title,
    required String sub,
    required double w,
    required double h,
  }) {
    return Column(
      children: [
        const Spacer(),

        Text(
          title,
          style: TextStyle(
            fontSize: w * 0.05,
            fontWeight: FontWeight.w600,
            color: const Color(0xFF555555),
          ),
          textAlign: TextAlign.center,
        ),

        SizedBox(height: h * 0.01),

        Padding(
          padding: EdgeInsets.symmetric(horizontal: w * 0.06),
          child: Text(
            sub,
            style: TextStyle(
              fontSize: w * 0.03,
              color: Colors.grey,
              height: 1.4,
            ),
            textAlign: TextAlign.center,
          ),
        ),

        const Spacer(),

        Padding(
          padding: EdgeInsets.only(bottom: 4),
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: w * 0.05,
              vertical: h * 0.02,
            ),
            child: Container(
              width: double.infinity,
              height: h * 0.06,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                boxShadow: [
                  BoxShadow(
                    color: Colors.blueAccent.withOpacity(0.4),
                    spreadRadius: 2,
                    blurRadius: 8,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColor.primary,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                  ),
                  elevation: 0,
                ),
                onPressed: () {},
                child: Text(
                  "Make / Retrieve Booking",
                  style: TextStyle(
                    color: AppColor.white,
                    fontSize: w * 0.04,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
