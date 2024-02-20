import 'package:admin/layout/padding.dart';
import 'package:admin/models/RecentFile.dart';
import 'package:admin/value/theme.dart';
import 'package:flutter/material.dart';

class RecentFiles extends StatelessWidget {
  const RecentFiles({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: white,
        boxShadow: [
          BoxShadow(
              color: Theme.of(context).colorScheme.shadow.withOpacity(0.10),
              blurRadius: 10,
              spreadRadius: 1,
              offset: const Offset(0, 5)),
        ],
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Recent Files",
            style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(color: darkblue, fontWeight: FontWeight.w700),
          ),
          SizedBox(
            width: double.infinity,
            child: DataTable(
              columnSpacing: defaultPadding,
              // minWidth: 600,
              columns: [
                DataColumn(
                  label: Text(
                    "Complainant's name",
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall
                        ?.copyWith(color: black, fontWeight: FontWeight.w600),
                  ),
                ),
                DataColumn(
                  label: Text(
                    "Date",
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall
                        ?.copyWith(color: black, fontWeight: FontWeight.w600),
                  ),
                ),
                DataColumn(
                  label: Text(
                    "Status",
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall
                        ?.copyWith(color: black, fontWeight: FontWeight.w600),
                  ),
                ),
              ],
              rows: List.generate(
                demoRecentFiles.length,
                (index) => recentFileDataRow(demoRecentFiles[index]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

DataRow recentFileDataRow(RecentFile fileInfo) {
  return DataRow(
    cells: [
      DataCell(
        Row(
          children: [
            Container(
              width: 35,
              height: 35,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(35),
                image: DecorationImage(
                  image: AssetImage(fileInfo.icon!),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Text(
                fileInfo.title!,
                style: TextStyle(color: black),
              ),
            ),
          ],
        ),
      ),
      DataCell(Text(
        fileInfo.date!,
        style: TextStyle(color: black),
      )),
      DataCell(Text(
        fileInfo.status!,
        style: TextStyle(color: black),
      )),
    ],
  );
}
