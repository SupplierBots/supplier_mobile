import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:supplier_mobile/domain/remote/delays/delays.dart';
import 'package:supplier_mobile/domain/remote/products/product.dart';
import 'package:supplier_mobile/domain/remote/remote_failure.dart';
import 'package:supplier_mobile/domain/remote/remote_repository.dart';

part 'remote_state.dart';
part 'remote_cubit.freezed.dart';
part 'remote_cubit.g.dart';

@injectable
class RemoteCubit extends HydratedCubit<RemoteState> {
  RemoteCubit(this._remoteRepository) : super(RemoteState.initial());

  final RemoteRepository _remoteRepository;

  StreamSubscription<Either<RemoteFailure, Delays>> _delaysSubscription;
  StreamSubscription<Either<RemoteFailure, List<Product>>>
      _productsSubscription;

  void startedWatchingDelays() {
    _delaysSubscription?.cancel();
    _delaysSubscription = _remoteRepository.watchDelays().listen(
          (result) => result.fold(
            (f) {},
            (delays) => _loadedDelays(delays),
          ),
        );
  }

  void startedWatchingProducts() {
    _productsSubscription?.cancel();
    _productsSubscription = _remoteRepository.watchProducts().listen(
          (result) => result.fold(
            (f) {},
            (products) => _loadedProducts(products),
          ),
        );
  }

  void _loadedProducts(List<Product> products) {
    final map = <String, Product>{};
    for (final product in products) {
      map[product.name] = product;
    }
    emit(state.copyWith(products: map));
  }

  void _loadedDelays(Delays delays) {
    emit(state.copyWith(delays: delays));
  }

  @override
  RemoteState fromJson(Map<String, dynamic> json) {
    return RemoteState.fromJson(json);
  }

  @override
  Map<String, dynamic> toJson(RemoteState state) {
    return state.toJson();
  }

  @override
  Future<void> close() {
    _delaysSubscription?.cancel();
    _productsSubscription?.cancel();
    return super.close();
  }
}
