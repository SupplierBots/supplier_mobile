import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:supplier_mobile/domain/dashboard/dashboard_failure.dart';
import 'package:supplier_mobile/domain/dashboard/dashboard_repository.dart';
import 'package:supplier_mobile/domain/dashboard/droplists/droplist.dart';
import 'package:supplier_mobile/domain/dashboard/droplists/droplists_collection.dart';
import 'package:supplier_mobile/domain/dashboard/general_info/general_info.dart';
import 'package:supplier_mobile/infrastructure/core/firestore_helpers.dart';
import 'package:rxdart/rxdart.dart';
import 'package:supplier_mobile/infrastructure/dashboard/firebase_droplist.dart';

@LazySingleton(as: DashboardRepository)
class FirebaseDashboardRepository implements DashboardRepository {
  FirebaseDashboardRepository(this._firestore);

  final FirebaseFirestore _firestore;

  @override
  Stream<Either<DashboardFailure, DroplistCollection>> watchDroplists() async* {
    yield* Rx.combineLatest2(
        _getDroplistStream('supreme'),
        _getDroplistStream('palace'),
        (
          Droplist supremeDroplist,
          Droplist palaceDroplist,
        ) =>
            right<DashboardFailure, DroplistCollection>(
              DroplistCollection(
                supreme: supremeDroplist,
                palace: palaceDroplist,
              ),
            )).onErrorReturnWith(
      (dynamic e) {
        print(e.toString());
        return left<DashboardFailure, DroplistCollection>(
          const DashboardFailure.unexpected(),
        );
      },
    );
  }

  Stream<Droplist> _getDroplistStream(String page) {
    return _firestore.dashboardCollection
        .doc('droplists')
        .collection(page)
        .orderBy('date', descending: true)
        .limit(1)
        .snapshots()
        .map(
          (s) => FirebaseDroplist.fromSnapshot(s.docs.first.data()).toDomain(),
        );
  }

  @override
  Stream<Either<DashboardFailure, GeneralInfo>> watchGeneralInfo() async* {
    yield* _firestore
        .collection('mobile')
        .doc('info')
        .snapshots()
        .map(
          (document) => right<DashboardFailure, GeneralInfo>(
            GeneralInfo.fromJson(document.data()),
          ),
        )
        .onErrorReturnWith(
      (dynamic e) {
        print(e.toString());
        return left<DashboardFailure, GeneralInfo>(
          const DashboardFailure.unexpected(),
        );
      },
    );
  }
}
