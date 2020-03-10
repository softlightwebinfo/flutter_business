import 'package:flutter/material.dart';
import 'package:flutter_business/models/TopBanner.dart';

class TopBannerService {
  List<TopBanner> getAll() {
    return [
      TopBanner(
        "https://cdn.pixabay.com/photo/2016/03/05/19/02/abstract-1238247__340.jpg",
        "EPIC\nDEAL",
        "EXPLUSIVE",
        Colors.red,
        "40% OFF",
        "On legendary restaurant",
        Colors.red,
      ),
      TopBanner(
        "https://cdn.pixabay.com/photo/2016/11/21/13/04/beef-1845296__340.jpg",
        "40%\nOFF",
        "OFFER",
        Colors.green,
        "CODE: DREAMWALKER",
        "Free Delivery",
        Colors.red,
      ),
      TopBanner(
        "https://cdn.pixabay.com/photo/2016/03/05/19/02/abstract-1238247__340.jpg",
        "EPIC\nDEAL",
        "EXPLUSIVE",
        Colors.red,
        "40% OFF",
        "On legendary restaurant",
        Colors.red,
      ),
      TopBanner(
        "",
        "40%\nOFF",
        "OFFER",
        Colors.green,
        "CODE: DREAMWALKER",
        "Free Delivery",
        Colors.teal,
      ),
    ];
  }
}
