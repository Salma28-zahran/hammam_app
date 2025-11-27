import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hammam_app/core/route/routes.dart';
import 'package:hammam_app/theme/app_theme.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: AppColor.white,
      body: Padding(
        padding: EdgeInsets.only(left: w * 0.04, right: w * 0.04, top: h * 0.01),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Text(
                "Menu",
                style: AppColor.textblack.copyWith(
                  fontSize: w * 0.07,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: h * 0.025),

              _sectionTitle("Account Settings", w),

              SizedBox(height: h * 0.02),

              _menuItem(
                icon: Icons.person_outline,
                text: "Personal Information",
                onTap: () {},
                w: w,
              ),

              SizedBox(height: h * 0.015),

              _menuItem(
                icon: Icons.lock_outline,
                text: "Change Password",
                onTap: () {},
                w: w,
              ),

              SizedBox(height: h * 0.012),
              Divider(thickness: 0.7),

              SizedBox(height: h * 0.012),

              _sectionTitle("Marketplace", w),

              SizedBox(height: h * 0.012),

              _menuItem(
                icon: FontAwesomeIcons.history,
                text: "Order History",
                onTap: () {},
                w: w,
              ),

              SizedBox(height: h * 0.012),
              Divider(thickness: 0.7),

              SizedBox(height: h * 0.012),

              _sectionTitle("Travel Information", w),

              SizedBox(height: h * 0.012),

              _menuItem(
                icon: Icons.book,
                text: "Bookings History",
                onTap: () {},
                w: w,
              ),

              SizedBox(height: h * 0.012),
              Divider(thickness: 0.7),

              SizedBox(height: h * 0.02),

              _sectionTitle("Support", w),

              SizedBox(height: h * 0.02),

              _menuItem(
                icon: Icons.mail_outline,
                text: "Give us Feedback",
                onTap: () {},
                w: w,
              ),

              SizedBox(height: h * 0.015),

              _menuItem(
                icon: Icons.mode_edit_outline,
                text: "Formal Complaint",
                onTap: () {},
                w: w,
              ),

              SizedBox(height: h * 0.015),

              _menuItem(
                icon: Icons.search_outlined,
                text: "Legal",
                onTap: () {},
                w: w,
              ),

              SizedBox(height: h * 0.015),

              _menuItem(
                icon: Icons.account_box,
                text: "Delete Account",
                onTap: () {},
                w: w,
              ),

              SizedBox(height: h * 0.03),

              Padding(
                padding: EdgeInsets.all(w * 0.02),
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
                      backgroundColor: Colors.lightBlueAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                      elevation: 0,
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, PageRouteName.login);
                    },
                    child: Text(
                      "Logout",
                      style: TextStyle(
                        fontFamily: "Arial",
                        fontSize: w * 0.04,
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _sectionTitle(String title, double w) {
    return Text(
      title,
      style: AppColor.textblack.copyWith(
        fontSize: w * 0.035,
        fontWeight: FontWeight.w500,
        color: Colors.grey,
      ),
    );
  }

  Widget _menuItem({
    required IconData icon,
    required String text,
    required VoidCallback onTap,
    required double w,
  }) {
    return InkWell(
      onTap: onTap,
      child: Row(
        children: [
          Icon(icon, color: AppColor.primary, size: w * 0.055),
          SizedBox(width: w * 0.05),
          Expanded(
            child: Text(
              text,
              style: AppColor.textblack.copyWith(
                fontSize: w * 0.035,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          Icon(Icons.arrow_forward_ios,
              size: w * 0.04, color: AppColor.primary),
        ],
      ),
    );
  }
}
