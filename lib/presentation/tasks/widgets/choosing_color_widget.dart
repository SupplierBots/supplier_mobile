import 'package:flutter/material.dart';
import 'package:supplier_mobile/presentation/core/buttons/secondary_button.dart';
import 'package:supplier_mobile/presentation/core/constants/colors.dart';
import 'package:supplier_mobile/presentation/core/form/form_text_field.dart';
import 'package:supplier_mobile/presentation/tasks/widgets/item_color.dart';

class ColorChoosing extends StatelessWidget {
  const ColorChoosing({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        minHeight: 190,
      ),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.only(top: 5, bottom: 12, left: 2, right: 2),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: kSecondaryBackground,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 13, left: 13, bottom: 10),
              child: Text(
                'Colors',
                style: TextStyle(color: kLightPurple, fontSize: 22),
              ),
            ),
            Wrap(
              children: const <Widget>[
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: ItemColor(
                    itemColor: 'Swag',
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: ItemColor(
                    itemColor: 'Blue',
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: ItemColor(
                    itemColor: 'Blue',
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: ItemColor(
                    itemColor: 'Blue',
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: ItemColor(
                    itemColor: 'Blue',
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: ItemColor(
                    itemColor: 'Blue',
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: ItemColor(
                    itemColor: 'Blue',
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Divider(
                height: 22,
                thickness: 1,
                color: kTertiaryBackground,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                children: [
                  Flexible(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: FormTextField(
                        backgroundColor: kTertiaryBackground,
                        name: 'enter colors',
                        placeholder: 'Enter colors',
                      ),
                    ),
                  ),
                  const SecondaryButton(
                      text: 'Add', width: 85, height: 50, onTap: null),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
