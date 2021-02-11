import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:supplier_mobile/domain/dashboard/dashboard_repository.dart';
import 'package:supplier_mobile/domain/dashboard/droplists/droplists_collection.dart';
import 'package:supplier_mobile/domain/dashboard/general_info/general_info.dart';

part 'dashboard_event.dart';
part 'dashboard_state.dart';
part 'dashboard_bloc.freezed.dart';
part 'dashboard_bloc.g.dart';

@injectable
class DashboardBloc extends HydratedBloc<DashboardEvent, DashboardState> {
  DashboardBloc(this._dashboardRepository) : super(DashboardState.initial());

  final DashboardRepository _dashboardRepository;

  @override
  Stream<DashboardState> mapEventToState(
    DashboardEvent event,
  ) async* {
    yield* event.map(
      startedWatchingDroplists: (e) async* {
        yield* _dashboardRepository.watchDroplists().map(
              (result) => result.fold(
                (failure) => state,
                (droplists) => state.copyWith(droplists: droplists),
              ),
            );
      },
      startedWatchingGeneralInfo: (e) async* {
        yield* _dashboardRepository.watchGeneralInfo().map(
              (result) => result.fold(
                (failure) => state,
                (info) => state.copyWith(generalInfo: info),
              ),
            );
      },
    );
  }

  @override
  DashboardState fromJson(Map<String, dynamic> json) {
    return DashboardState.fromJson(json);
  }

  @override
  Map<String, dynamic> toJson(DashboardState state) {
    return state.toJson();
  }
}
