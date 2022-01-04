import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

import '../constants.dart';
import '../logic/firebase_notifier.dart';
import '../model/past_purchase.dart';

class IAPRepo extends ChangeNotifier {
  late FirebaseFirestore _firestore;
  late FirebaseAuth _auth;

  bool get isLoggedIn => _user != null;
  User? _user;
  bool hasActiveSubscription = false;
  bool hasUpgrade = false;
  List<PastPurchase> purchases = [];

  late StreamSubscription<User?> _userSubscription;
  StreamSubscription<QuerySnapshot>? _purchaseSubscription;

  IAPRepo(FirebaseNotifier firebaseNotifier) {
    firebaseNotifier.firestore.then((value) {
      _auth = FirebaseAuth.instance;
      _firestore = value;
      updatePurchases();
      listenToLogin();
    });
  }

  void listenToLogin() {
    _user = _auth.currentUser;
    _userSubscription = FirebaseAuth.instance.authStateChanges().listen((user) {
      _user = user;
      updatePurchases();
    });
  }

  void updatePurchases() {
    _purchaseSubscription?.cancel();
    var user = _user;
    if (user == null) {
      purchases = [];
      hasActiveSubscription = false;
      hasUpgrade = false;
      return;
    }
    var purchaseStream = _firestore
        .collection('purchases')
        .where('userId', isEqualTo: user.uid)
        .snapshots();
    _purchaseSubscription = purchaseStream.listen((snapshot) {
      purchases = snapshot.docs.map((document) {
        var data = document.data();
        return PastPurchase.fromJson(data);
      }).toList();

      hasActiveSubscription = purchases.any((element) =>
          element.productId == storeKeySubscription &&
          element.status != Status.expired);

      hasUpgrade = purchases.any(
        (element) => element.productId == storeKeyUpgrade,
      );

      notifyListeners();
    });
  }

  @override
  void dispose() {
    _userSubscription.cancel();
    _purchaseSubscription?.cancel();
    super.dispose();
  }
}
