import 'package:flutter/material.dart';

class PageProvider extends ChangeNotifier {
  void _init() {
    _currentPage = 0;
  }

  PageProvider() {
    _init();
  }

  int? _currentPage;
  int? get currentPage => _currentPage;

  set currentPage(int? newPage) {
    _currentPage = newPage;
    notifyListeners();
  }
}

class Controller extends ChangeNotifier {
  void _init() {
    _control = PageController();
  }

  Controller() {
    _init();
  }

  PageController? _control;
  PageController? get control => _control;

  set control(PageController? newControl) {
    _control = newControl;
    notifyListeners();
  }
}

// class Item extends ChangeNotifier {
//   void _init() {
//     _itemKey = GlobalKey();
//   }

//   Item() {
//     _init();
//   }

//   GlobalKey? _itemKey;
//   GlobalKey? get itemKey => _itemKey;

//   set itemKey(GlobalKey? newitemKey) {
//     _itemKey = newitemKey;
//     notifyListeners();
//   }
// }

class Open extends ChangeNotifier {
  void _init() {
    _isOpen = false;
  }

  Open() {
    _init();
  }

  bool? _isOpen;
  bool? get isOpen => _isOpen;

  set isOpen(bool? newOpen) {
    _isOpen = newOpen;
    notifyListeners();
  }
}
