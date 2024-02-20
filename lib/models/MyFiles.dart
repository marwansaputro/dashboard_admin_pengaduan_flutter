import 'package:admin/value/path_image.dart';
import 'package:admin/value/theme.dart';
import 'package:flutter/material.dart';

class CloudStorageInfo {
  final String? svgSrc, title, totalStorage;
  final int? numOfFiles, percentage;
  final Color? color;

  CloudStorageInfo({
    this.svgSrc,
    this.title,
    this.totalStorage,
    this.numOfFiles,
    this.percentage,
    this.color,
  });
}

List demoMyFiles = [
  CloudStorageInfo(
    title: "Incoming Complaint",
    numOfFiles: 1328,
    svgSrc: pathIconIcoming,
    totalStorage: "70",
    color: primaryColor,
    percentage: 70,
  ),
  CloudStorageInfo(
    title: "Complaint Process",
    numOfFiles: 1328,
    svgSrc: pathIconProcess,
    totalStorage: "35",
    color: Yellow,
    percentage: 35,
  ),
  CloudStorageInfo(
    title: "Complaint rejected",
    numOfFiles: 1328,
    svgSrc: pathIconReject,
    totalStorage: "10",
    color: Red,
    percentage: 10,
  ),
  CloudStorageInfo(
    title: "Complaint Completed",
    numOfFiles: 5328,
    svgSrc: pathIconCompleted,
    totalStorage: "2",
    color: primaryGreen,
    percentage: 50,
  ),
];
