import 'package:supplier_mobile/presentation/core/form/masked_text_input_formatter.dart';

final creditCardNumberMask = MaskedTextInputFormatter(
  mask: 'xxxx xxxx xxxx xxxx',
  separator: ' ',
  accept: RegExp('[0-9]'),
);

final cvvMask = MaskedTextInputFormatter(
  mask: 'xxxx',
  separator: ' ',
  accept: RegExp('[0-9]'),
);
