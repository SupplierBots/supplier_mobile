import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:supplier_mobile/components/item_color.dart';
import 'package:supplier_mobile/components/navigation_bar.dart';
import 'package:supplier_mobile/components/profile_bar_details.dart';
import 'package:supplier_mobile/components/top_bar.dart';
import 'package:supplier_mobile/constants/typography.dart';
import 'package:supplier_mobile/models/profile.dart';
import 'package:supplier_mobile/state/profiles_state.dart';

class ProfilesScreen extends StatefulWidget {
  static const String route = 'profiles';

  @override
  _ProfilesScreenState createState() => _ProfilesScreenState();
}

class _ProfilesScreenState extends State<ProfilesScreen> {
  @override
  Widget build(BuildContext context) {
    final ProfilesState profilesState =
        Provider.of<ProfilesState>(context, listen: false);

    return Scaffold(
      appBar: TopBar(
        content: Text(
          'Profiles',
          style: kHeader,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Consumer<ProfilesState>(
          builder: (BuildContext context, ProfilesState state, Widget child) {
            final List<ItemColor> items = <ItemColor>[];
            state.profiles.forEach((String key, Profile value) {
              items.add(ItemColor(itemColor: key + value.firstName));
            });

            return Column(children: items);
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          final Profile profile = Profile(
            firstName: 'Juras',
            lastName: 'Debil',
            email: 'jd@gmail.com',
            phoneNumber: '997',
            address: 'Slowianska 5',
            addressDetails: 'Apt1',
            city: 'Sochaczew',
            postcode: '96-500',
            country: 'Poland',
            creditCardType: 'Mastercard',
            creditCardNumber: '4444 5555 6666 7777',
            expiryMonth: '10',
            expiryYear: '2021',
            securityCode: '542',
          );
          profilesState.addProfile(Random().nextInt(300).toString(), profile);
        },
      ),
      bottomNavigationBar: NavigationBar(),
    );
  }
}
