import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:supplier_mobile/domain/dashboard/droplists/droplist.dart';

class FirebaseDroplist {
  FirebaseDroplist({this.date, this.week, this.link});

  factory FirebaseDroplist.fromSnapshot(Map<String, dynamic> snapshot) {
    return FirebaseDroplist(
      date: snapshot['date'] as Timestamp,
      week: snapshot['week'] as int,
      link: snapshot['link'] as String,
    );
  }

  final Timestamp date;
  final int week;
  final String link;

  Droplist toDomain() {
    return Droplist(
      date: date.toDate(),
      week: week,
      link: link,
    );
  }
}
