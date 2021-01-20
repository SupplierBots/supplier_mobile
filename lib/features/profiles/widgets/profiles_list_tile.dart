import 'package:flutter/material.dart';
import 'package:supplier_mobile/constants/colors.dart';
import 'package:supplier_mobile/constants/custom_icons.dart';

class ProfilesListTile extends StatelessWidget {
  const ProfilesListTile({
    Key key,
    @required this.name,
    @required this.editAction,
    @required this.deleteAction,
  }) : super(key: key);
  final String name;
  final VoidCallback editAction;
  final VoidCallback deleteAction;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 18),
      alignment: Alignment.centerLeft,
      height: 60,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: kSecondaryBackground,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Row(
        children: [
          Text(
            name,
            style: const TextStyle(color: kLightPurple, fontSize: 18),
          ),
          const Spacer(),
          GestureDetector(
            onTap: editAction,
            child: const Icon(
              CustomIcons.edit,
              color: kLighGrey,
              size: 18,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: GestureDetector(
              onTap: deleteAction,
              child: const Icon(
                CustomIcons.remove,
                color: kLighGrey,
                size: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
