import 'package:dartz/dartz.dart';
import 'package:supplier_mobile/domain/dashboard/dashboard_failure.dart';
import 'package:supplier_mobile/domain/dashboard/droplists/droplist.dart';
import 'package:supplier_mobile/domain/dashboard/general_info/general_info.dart';

abstract class DashboardRepository {
  Stream<Either<DashboardFailure, List<Droplist>>> watchDroplists();
  Stream<Either<DashboardFailure, GeneralInfo>> watchGeneralInfo();
}
