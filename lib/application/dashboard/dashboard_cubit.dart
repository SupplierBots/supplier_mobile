import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:supplier_mobile/domain/dashboard/dashboard_failure.dart';
import 'package:supplier_mobile/domain/dashboard/dashboard_repository.dart';
import 'package:supplier_mobile/domain/dashboard/droplists/droplists_collection.dart';
import 'package:supplier_mobile/domain/dashboard/general_info/general_info.dart';

part 'dashboard_state.dart';
part 'dashboard_cubit.freezed.dart';
part 'dashboard_cubit.g.dart';

@injectable
class DashboardCubit extends HydratedCubit<DashboardState> {
  DashboardCubit(this._dashboardRepository) : super(DashboardState.initial());
  final DashboardRepository _dashboardRepository;

  StreamSubscription<Either<DashboardFailure, DroplistCollection>>
      _droplistsSubscription;
  StreamSubscription<Either<DashboardFailure, GeneralInfo>> _infoSubscription;

  void startedWatchingGeneralInfo() {
    _infoSubscription?.cancel();
    _infoSubscription = _dashboardRepository.watchGeneralInfo().listen(
          (result) => result.fold(
            (f) {},
            (generalInfo) => loadedGeneralInfo(generalInfo),
          ),
        );
  }

  void startedWatchingDroplists() {
    _droplistsSubscription?.cancel();
    _droplistsSubscription = _dashboardRepository.watchDroplists().listen(
          (result) => result.fold(
            (f) {},
            (droplists) => loadedDroplists(droplists),
          ),
        );
  }

  void loadedDroplists(DroplistCollection droplists) {
    emit(state.copyWith(droplists: droplists));
  }

  void loadedGeneralInfo(GeneralInfo generalInfo) {
    emit(state.copyWith(generalInfo: generalInfo));
  }

  @override
  DashboardState fromJson(Map<String, dynamic> json) {
    return DashboardState.fromJson(json);
  }

  @override
  Map<String, dynamic> toJson(DashboardState state) {
    return state.toJson();
  }

  @override
  Future<void> close() {
    _droplistsSubscription?.cancel();
    _infoSubscription?.cancel();
    return super.close();
  }
}
