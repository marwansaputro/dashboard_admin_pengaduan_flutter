import 'package:admin/value/path_image.dart';

class RecentFile {
  final String? icon, title, date, status;

  RecentFile({this.icon, this.title, this.date, this.status});
}

List demoRecentFiles = [
  RecentFile(
    icon: pathImageAvatarAdmin,
    title: "Marwan Saputro",
    date: "01-01-2024",
    status: "Sucess",
  ),
  RecentFile(
    icon: pathImageAvatarAdmin,
    title: "Marwan Saputro",
    date: "01-01-2024",
    status: "Sucess",
  ),
];
