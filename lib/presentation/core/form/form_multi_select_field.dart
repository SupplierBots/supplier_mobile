import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:supplier_mobile/presentation/core/buttons/secondary_button.dart';
import 'package:supplier_mobile/presentation/core/constants/colors.dart';
import 'package:supplier_mobile/presentation/core/form/form_text_field.dart';
import 'package:supplier_mobile/presentation/core/gradient_widget.dart';
import 'package:supplier_mobile/presentation/core/form/form_multi_select_item.dart';

class FormMultiSelectField extends StatelessWidget {
  const FormMultiSelectField({
    Key key,
    @required this.formKey,
    @required this.name,
    @required this.title,
    @required this.placeholder,
  }) : super(key: key);

  final String name;
  final String title;
  final String placeholder;
  final GlobalKey<FormBuilderState> formKey;

  @override
  Widget build(BuildContext context) {
    return FormBuilderField(
      name: name,
      validator: (List<String> items) {
        if (items == null || items.isEmpty) {
          return 'You have to add at least one';
        }
        return null;
      },
      builder: (FormFieldState<List<String>> field) {
        return HookBuilder(
          builder: (context) {
            final itemFormKey =
                useMemoized(() => GlobalKey<FormBuilderState>());
            return ConstrainedBox(
              constraints: const BoxConstraints(
                minHeight: 190,
              ),
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.only(
                    top: 5, bottom: 12, left: 2, right: 2),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: kSecondaryBackground,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 13, left: 13, bottom: 10),
                      child: Text(
                        title,
                        style:
                            const TextStyle(color: kLightPurple, fontSize: 18),
                      ),
                    ),
                    if (field.hasError)
                      Center(
                        child: Container(
                          margin: const EdgeInsets.only(top: 20),
                          child: GradientWidget(
                            gradient: kRedGradient,
                            child: Text(
                              field.errorText,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ),
                    Wrap(
                      children: field.value == null
                          ? []
                          : field.value
                              .map(
                                (item) => Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: FormMultiSelectItem(
                                    value: item,
                                    onTap: () {
                                      final copiedList = [...field.value];
                                      copiedList.remove(item);
                                      field.didChange(copiedList);
                                    },
                                  ),
                                ),
                              )
                              .toList(),
                    ),
                    SizedBox(
                      height: !field.hasError ||
                              field.value == null ||
                              field.value.isEmpty
                          ? 60
                          : 20,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: Divider(
                        height: 22,
                        thickness: 1,
                        color: kTertiaryBackground,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: FormBuilder(
                        key: itemFormKey,
                        child: Row(
                          children: [
                            Flexible(
                              flex: 2,
                              child: Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: FormTextField(
                                  validateOnFocusChange: false,
                                  backgroundColor: kTertiaryBackground,
                                  name: 'item',
                                  valueTransformer: (String item) {
                                    return item
                                        .replaceAll('+', '')
                                        .toLowerCase();
                                  },
                                  validator: (String item) {
                                    if (field.value != null &&
                                        field.value
                                            .contains(item.toLowerCase())) {
                                      return 'Already added';
                                    }
                                    return null;
                                  },
                                  placeholder: placeholder,
                                ),
                              ),
                            ),
                            SecondaryButton(
                              text: 'Add',
                              width: 85,
                              height: 50,
                              onTap: () {
                                if (!itemFormKey.currentState
                                    .saveAndValidate()) {
                                  FocusManager.instance.primaryFocus.unfocus();
                                  return;
                                }
                                final itemValue = itemFormKey
                                    .currentState.value['item'] as String;

                                field.didChange(
                                    [...field.value ?? [], itemValue]);
                                itemFormKey.currentState.reset();
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
