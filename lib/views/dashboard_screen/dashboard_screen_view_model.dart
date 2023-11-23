import 'dart:developer';

import 'package:flutter/animation.dart';
import 'package:stacked/stacked.dart';

import '../../config/config.dart';
import '../../models/authors.dart';
import '../../models/quotes.dart';
import '../../models/tags.dart';
import 'service/dashboard_service.dart';

class DashboardScreenViewModel extends BaseViewModel with DashboradService {
  List<Tags> tagsList = [];
  List<Quotes> quotesList = [];
  List<Authors> authorList = [];
  AnimationController? animationController;
  Animation<double>? animation;

  bool isGrid = true;

  DashboardScreenViewModel() {
    loadItems();
  }

  // Add ViewModel specific code here
  Future<void> loadItems() async {
    setBusy(true);
    // await Future.delayed(const Duration(seconds: 1));
    authorList = Authors.fromJsonList(authors);
    log(authorList.toString());
    tagsList = Tags.fromJsonList(tags);
    quotesList = Quotes.fromJsonList(quotes);
    setBusy(false);
    notifyListeners();
  }

  void tagOnTapHandler(int id) {
  }

  void authorOnTapHandler(int id) {
  }

  void layoutChangeHandler() {
    isGrid = !isGrid;
    notifyListeners();
  }
}
