part of 'remote_cubit.dart';

@freezed
abstract class RemoteState with _$RemoteState {
  const factory RemoteState({
    @required Delays delays,
    @required Map<String, Product> products,
  }) = _RemoteState;

  factory RemoteState.initial() => const RemoteState(
        delays: Delays(
          minCheckout: 3000,
          maxCheckout: 5000,
          restocksCheckout: 500,
          refresh: 1000,
        ),
        products: {},
      );

  factory RemoteState.fromJson(Map<String, dynamic> json) =>
      _$RemoteStateFromJson(json);
}
