import 'package:admin/screens/dashboard/dashboard_screen.dart';
import 'package:admin/screens/notification/notification_screen.dart';
import 'package:admin/value/path_image.dart';
import 'package:admin/value/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: Image.asset(pathLogoIntegra),
          ),
          DrawerListTile(
            title: "Dashboard",
            svgSrc: pathIconDashboard,
            press: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DashboardScreen()),
              ),
            },
          ),
          DrawerListTile(
            title: "Notification",
            svgSrc: pathIconNotification,
            press: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NotificationScreen()),
              ),
            },
          ),
          DrawerListTile(
            title: "Profile",
            svgSrc: pathIconProfile,
            press: () {},
          ),
          DrawerListTile(
            title: "Settings",
            svgSrc: pathIconSetting,
            press: () {},
          ),
        ],
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    required this.title,
    required this.svgSrc,
    required this.press,
  }) : super(key: key);

  final String title, svgSrc;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      horizontalTitleGap: 0.0,
      leading: SvgPicture.asset(
        svgSrc,
        colorFilter: ColorFilter.mode(primaryGrey, BlendMode.srcIn),
        height: 16,
      ),
      title: Text(
        title,
        style: Theme.of(context)
            .textTheme
            .titleMedium!
            .copyWith(color: primaryGrey, fontWeight: FontWeight.w500),
      ),
    );
  }
}
