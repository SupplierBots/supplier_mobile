import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:supplier_mobile/application/profiles/profiles_cubit.dart';
import 'package:supplier_mobile/application/tasks/tasks_cubit.dart';

String generateAddressCookie(BuildContext context, String uid) {
  final task = context.read<TasksCubit>().state.tasks[uid];
  final profile =
      context.read<ProfilesCubit>().state.profiles[task.profileName];

  final state =
      profile.region == 'us' ? _convertStateToCode(profile.state) : 'undefined';

  final phone = profile.region == 'us'
      ? profile.phoneNumber.replaceFirstMapped(RegExp(r'(\d{3})(\d{3})(\d{4})'),
          (match) => '${match.group(1)}-${match.group(2)}-${match.group(3)}')
      : profile.phoneNumber;

  final suffix = profile.region == 'us' ? '' : '|';

  //Unfortuately it's not encodeComponent()
  final value =
      '${profile.firstName} ${profile.lastName}|${profile.email}|$phone|${profile.address}|${profile.addressDetails}|${profile.city}|$state|${profile.postcode}|${_convertCountryToCode(profile.country)}$suffix'
          .replaceAll(' ', '%20')
          .replaceAll('@', '%40');

  return value;
}

String _convertCountryToCode(String country) {
  switch (country) {
    case 'USA':
      return 'USA';
    case 'Canada':
      return 'CANADA';
    case 'Austria':
      return 'AT';
    case 'Belarus':
      return 'BY';
    case 'Belgium':
      return 'BE';
    case 'Bulgaria':
      return 'BG';
    case 'Croatia':
      return 'HR';
    case 'Czech Republic':
      return 'CZ';
    case 'Denmark':
      return 'DK';
    case 'Estonia':
      return 'EE';
    case 'Finland':
      return 'FI';
    case 'France':
      return 'FR';
    case 'Germany':
      return 'DE';
    case 'Greece':
      return 'GR';
    case 'Hungary':
      return 'HU';
    case 'Iceland':
      return 'IS';
    case 'Ireland':
      return 'IE';
    case 'Italy':
      return 'IT';
    case 'Latvia':
      return 'LV';
    case 'Lithuania':
      return 'LT';
    case 'Luxembourg':
      return 'LU';
    case 'Monaco':
      return 'MC';
    case 'Netherlands':
      return 'NL';
    case 'Norway':
      return 'NO';
    case 'Poland':
      return 'PL';
    case 'Portugal':
      return 'PT';
    case 'Romania':
      return 'RM';
    case 'Russia':
      return 'RU';
    case 'Slovakia':
      return 'SK';
    case 'Slovenia':
      return 'SI';
    case 'Spain':
      return 'ES';
    case 'Sweden':
      return 'SE';
    case 'Switzerland':
      return 'CH';
    case 'Turkey':
      return 'TR';
    case 'GB':
      return 'UK';
    case 'NB':
      return 'UK (Nothern Ireland)';
  }
  return country;
}

String _convertStateToCode(String state) {
  switch (state) {
    case 'Alabama':
      return 'AL';
    case 'Alaska':
      return 'AK';
    case 'Arizona':
      return 'AZ';
    case 'Arkansas':
      return 'AR';
    case 'California':
      return 'CA';
    case 'Colorado':
      return 'CO';
    case 'Connecticut':
      return 'CT';
    case 'Delaware':
      return 'DE';
    case 'Florida':
      return 'FL';
    case 'Georgia':
      return 'GA';
    case 'Hawaii':
      return 'HI';
    case 'Idaho':
      return 'ID';
    case 'Illnois':
      return 'IL';
    case 'Indiana':
      return 'IN';
    case 'Iowa':
      return 'IA';
    case 'Kansas':
      return 'KS';
    case 'Kentucky':
      return 'KY';
    case 'Louisiana':
      return 'LA';
    case 'Maine':
      return 'ME';
    case 'Maryland':
      return 'MD';
    case 'Massachusetts':
      return 'MA';
    case 'Michigan':
      return 'MI';
    case 'Minnesota':
      return 'MN';
    case 'Mississippi':
      return 'MS';
    case 'Missouri':
      return 'MO';
    case 'Montana':
      return 'MT';
    case 'Nebraska':
      return 'NE';
    case 'Nevada':
      return 'NV';
    case 'New Hampshire':
      return 'NH';
    case 'New Jersey':
      return 'NJ';
    case 'New Mexico':
      return 'NM';
    case 'New York':
      return 'NY';
    case 'North Carolina':
      return 'NC';
    case 'North Dakota':
      return 'ND';
    case 'Ohio':
      return 'OH';
    case 'Oklahoma':
      return 'OK';
    case 'Oregon':
      return 'OR';
    case 'Pennsylvania':
      return 'PA';
    case 'Rhode Island':
      return 'RI';
    case 'South Carolina':
      return 'SC';
    case 'South Dakota':
      return 'SD';
    case 'Tennessee':
      return 'TN';
    case 'Texas':
      return 'TX';
    case 'Utah':
      return 'UT';
    case 'Vermont':
      return 'VT';
    case 'Virginia':
      return 'VA';
    case 'Washington':
      return 'WA';
    case 'West Virginia':
      return 'WV';
    case 'Wisconsin':
      return 'WI';
    case 'Wyoming':
      return 'WY';
    case 'Alberta':
      return 'AB';
    case 'British Columbia':
      return 'BC';
    case 'New Brunswick':
      return 'NB';
    case 'Newfoundland and Labrador':
      return 'NL';
    case 'Nova Scotia':
      return 'NS';
    case 'Ontario':
      return 'ON';
    case 'Prince Edward Island':
      return 'PE';
    case 'Quebec':
      return 'QC';
    case 'Saskatchewan':
      return 'SK';
  }
  return state;
}
