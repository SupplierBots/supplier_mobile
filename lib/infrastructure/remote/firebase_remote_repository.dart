import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:supplier_mobile/domain/remote/checkout_report_payload/checkout_report_payload.dart';
import 'package:supplier_mobile/domain/remote/delays/delays.dart';
import 'package:supplier_mobile/domain/remote/products/product.dart';
import 'package:supplier_mobile/domain/remote/remote_failure.dart';
import 'package:supplier_mobile/domain/remote/remote_repository.dart';
import 'package:rxdart/rxdart.dart';

@LazySingleton(as: RemoteRepository)
class FirebaseRemoteRepository implements RemoteRepository {
  FirebaseRemoteRepository(this._firestore);

  final FirebaseFirestore _firestore;

  @override
  Stream<Either<RemoteFailure, Delays>> watchDelays() async* {
    yield* _firestore
        .collection('global')
        .doc('delays')
        .snapshots()
        .map(
          (document) => right<RemoteFailure, Delays>(
            Delays.fromJson(document.data()),
          ),
        )
        .onErrorReturnWith(
      (dynamic e) {
        return left<RemoteFailure, Delays>(
          const RemoteFailure.unexpected(),
        );
      },
    );
  }

  @override
  Stream<Either<RemoteFailure, List<Product>>> watchProducts() async* {
    yield* _firestore
        .collection('products')
        .snapshots()
        .map(
          (query) => right<RemoteFailure, List<Product>>(
            query.docs
                .map(
                  (e) => Product.fromJson(e.data()),
                )
                .toList(),
          ),
        )
        .onErrorReturnWith(
      (dynamic e) {
        return left<RemoteFailure, List<Product>>(
          const RemoteFailure.unexpected(),
        );
      },
    );
  }

  @override
  void reportCheckout(CheckoutReportPayload payload) {
    final _checkoutCollection = _firestore
        .collection('checkouts')
        .doc('mobile')
        .collection(payload.status);

    _checkoutCollection.add(
      <String, dynamic>{
        'taskAttempt': payload.attempt,
        'item': payload.item.toJson(),
        'checkoutDelay': payload.checkoutDelay,
        'modifiedButtons': payload.result.modifiedButtons,
        'region': payload.region,
        'date': Timestamp.now(),
        'atcTimestamp':
            Timestamp.fromMillisecondsSinceEpoch(payload.result.timestamps.atc),
        'submitTimestamp': Timestamp.fromMillisecondsSinceEpoch(
            payload.result.timestamps.submit),
        'startTimestamp': Timestamp.fromMillisecondsSinceEpoch(
            payload.result.timestamps.start),
      },
    );
  }
}
