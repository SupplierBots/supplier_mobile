import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:supplier_mobile/domain/remote/delays/delays.dart';
import 'package:supplier_mobile/domain/remote/products/product.dart';
import 'package:supplier_mobile/domain/remote/remote_failure.dart';
import 'package:supplier_mobile/domain/remote/remote_repository.dart';
import 'package:rxdart/rxdart.dart';

@LazySingleton(as: RemoteRepository)
class FirebaseDashboardRepository implements RemoteRepository {
  FirebaseDashboardRepository(this._firestore);

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
}
