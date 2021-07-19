import 'package:flutter/material.dart';

class CardInfo {
  final int id;
  final String name;
  final String description;
  final Container logo;
  final String rating;
  final Container isPaid;
  final Container star;
  final String imageUrl;
  final String webLink;
  final String appLink;
  final String forYear;

  CardInfo({
    required this.id,
    required this.name,
    required this.description,
    required this.logo,
    required this.rating,
    required this.isPaid,
    required this.star,
    required this.imageUrl,
    required this.webLink,
    required this.appLink,
    required this.forYear,
  });
}
