import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:dashclicker/logic/dash_purchases.dart';
import 'package:dashclicker/logic/firebase_notifier.dart';
import 'package:dashclicker/model/past_purchase.dart';

class IAPRepo extends ChangeNotifier {
  late FirebaseFirestore _firestore;
  late FirebaseAuth _auth;

  bool get isLoggedIn => _user != null;
  User? _user;
  bool hasActiveSubscription = false;
  List<PastPurchase> purchases = [];

  late StreamSubscription<User?> _userSubscription;
  StreamSubscription<QuerySnapshot>? _purchaseSubscription;

  IAPRepo(FirebaseNotifier firebaseNotififier) {
    firebaseNotififier.firestore.then((value) {
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
      return;
    }
    var purchaseStream = _firestore
        .collection('purchases')
        .where('userId', isEqualTo: user.uid)
        .snapshots();
    _purchaseSubscription = purchaseStream.listen((snapshot) {
      print('got ${snapshot.docs.length} purchases');
      purchases = snapshot.docs.map((DocumentSnapshot document) {
        var data = document.data();
        if (data == null) throw Exception('Queried document has no data');
        return PastPurchase.fromJson(data);
      }).toList();

      hasActiveSubscription = purchases.any((element) =>
          element.productId == storeKeySubscription &&
          element.status != Status.expired);
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
