import 'package:flutter/material.dart';

class EligibiltyScreenProvider extends ChangeNotifier {
  String _eligibilityMessage = "";
  bool _isEligible = false;
  void checkElgibility(int age) {
    if (age >= 18) {
      eligibleForVoting();
    } else {
      noteligbleForVoting();
    }
  }

  void eligibleForVoting() {
    _eligibilityMessage = "You are eligible for Voting";
    _isEligible = true;
    notifyListeners();
  }

  void noteligbleForVoting() {
    _eligibilityMessage = "You are not eligible for Voting";
    _isEligible = false;
    notifyListeners();
  }

  String get eligibilityMessage => _eligibilityMessage;
  bool get isEligible => _isEligible;
}
