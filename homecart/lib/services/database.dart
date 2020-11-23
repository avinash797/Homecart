import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:homecart/models/lists.dart';

class DatabaseService {
  final String uid;
  DatabaseService({this.uid});

  //Collection Reference
  final CollectionReference listCollection =
      FirebaseFirestore.instance.collection('customlists');

  

  Future updateUserData(String title, String contents, List listItems) async {
    return await listCollection.doc(uid).set({
      'title' : title,
      'contents' : FieldValue.arrayUnion(listItems),
    });
  }

  //lists from snapshot

  List<Lists> _customListsFromSnapshot(QuerySnapshot snapshot) {
    return snapshot.docs.map((doc) {
      return Lists(
        title: doc.data()['title'] ?? '',
        contents: doc.data()['contents'] ?? [],
      );
    }).toList();  }

  //get collection stream
  Stream<List<Lists>> get lists {
    return listCollection.snapshots().map(_customListsFromSnapshot);
  }
}
