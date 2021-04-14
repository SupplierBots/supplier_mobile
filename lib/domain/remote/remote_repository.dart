import 'package:dartz/dartz.dart';
import 'package:supplier_mobile/domain/remote/checkout_report_payload/checkout_report_payload.dart';
import 'package:supplier_mobile/domain/remote/delays/delays.dart';
import 'package:supplier_mobile/domain/remote/products/product.dart';
import 'package:supplier_mobile/domain/remote/remote_failure.dart';

abstract class RemoteRepository {
  Stream<Either<RemoteFailure, Delays>> watchDelays();
  Stream<Either<RemoteFailure, List<Product>>> watchProducts();
  void reportCheckout(CheckoutReportPayload payload);
}
