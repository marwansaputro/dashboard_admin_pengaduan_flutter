import 'package:admin/layout/padding.dart';
import 'package:admin/value/path_image.dart';
import 'package:admin/value/theme.dart';
import 'package:flutter/material.dart';

import 'chart.dart';
import 'storage_info_card.dart';

class StorageDetails extends StatelessWidget {
  const StorageDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: white,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        boxShadow: [
          BoxShadow(
              color: Theme.of(context).colorScheme.shadow.withOpacity(0.10),
              blurRadius: 10,
              spreadRadius: 1,
              offset: const Offset(0, 5)),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Diagram Complaint",
            style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(color: darkblue, fontWeight: FontWeight.w600),
          ),
          SizedBox(height: defaultPadding),
          Chart(),
          StorageInfoCard(
            svgSrc: pathIconIcoming,
            title: "Incoming Complaint",
            amountOfFiles: "15",
            numOfFiles: 1328,
          ),
          StorageInfoCard(
            svgSrc: pathIconProcess,
            title: "Complaint Process",
            amountOfFiles: "14",
            numOfFiles: 1328,
          ),
          StorageInfoCard(
            svgSrc: pathIconReject,
            title: "Complaint rejected",
            amountOfFiles: "16",
            numOfFiles: 140,
          ),
          StorageInfoCard(
            svgSrc: "assets/images/icons/Documents.svg",
            title: "Complaint Completed",
            amountOfFiles: "2",
            numOfFiles: 1328,
          ),
        ],
      ),
    );
  }
}
