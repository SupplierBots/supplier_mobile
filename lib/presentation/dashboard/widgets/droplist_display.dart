import 'package:flutter/material.dart';
import 'package:supplier_mobile/domain/dashboard/droplists/droplist.dart';
import 'package:supplier_mobile/presentation/core/constants/colors.dart';
import 'package:supplier_mobile/presentation/core/gradient_widget.dart';

class DroplistDisplay extends StatelessWidget {
  const DroplistDisplay({
    Key key,
    @required this.droplist,
    @required this.icon,
  }) : super(key: key);
  final Droplist droplist;
  final Icon icon;

  //! jest jakis overflow z pizdy, jak to ogarniesz po ludzku jak pisałem to pewnie go nie będzie
  //* link wyciągniesz z droplist.link (gesture detector, onTap url_launcher)

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: kSecondaryBackground,
      ),
      child: Padding(
        padding: //!Zamien na EdgeInsets.symmetric
            const EdgeInsets.only(left: 20, top: 13, right: 20, bottom: 13),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GradientWidget(
              child: icon,
            ),
            const Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'Week ${droplist.week}',
                  //!brakuje const
                  style: TextStyle(color: kLighGrey, fontSize: 20),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  droplist.date.toString(),
                  //!brakuje const
                  style: TextStyle(color: kDarkGrey, fontSize: 18),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
