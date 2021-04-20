import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:supplier_mobile/domain/dashboard/dashboard_failure.dart';
import 'package:supplier_mobile/domain/dashboard/dashboard_repository.dart';
import 'package:supplier_mobile/domain/dashboard/droplists/droplist.dart';
import 'package:supplier_mobile/domain/dashboard/general_info/general_info.dart';
import 'package:supplier_mobile/infrastructure/core/firestore_helpers.dart';
import 'package:rxdart/rxdart.dart';
import 'package:supplier_mobile/infrastructure/dashboard/firebase_droplist.dart';

@LazySingleton(as: DashboardRepository)
class FirebaseDashboardRepository implements DashboardRepository {
  FirebaseDashboardRepository(this._firestore);

  final FirebaseFirestore _firestore;

  @override
  Stream<Either<DashboardFailure, List<Droplist>>> watchDroplists() async* {
    yield* _firestore.dashboardCollection
        .doc('droplists')
        .collection('supreme')
        .orderBy('date', descending: true)
        .limit(2)
        .snapshots()
        .map(
          (query) => right<DashboardFailure, List<Droplist>>(query.docs
              .map(
                (doc) => FirebaseDroplist.fromSnapshot(doc.data()).toDomain(),
              )
              .toList()),
        )
        .onErrorReturnWith(
      (dynamic e) {
        return left<DashboardFailure, List<Droplist>>(
          const DashboardFailure.unexpected(),
        );
      },
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
        return left<DashboardFailure, GeneralInfo>(
          const DashboardFailure.unexpected(),
        );
      },
    );
  }
}
