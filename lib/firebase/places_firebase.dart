import 'package:cloud_firestore/cloud_firestore.dart';

class PlacesFirebase{
  late FirebaseFirestore _firestore;
  CollectionReference? _placesCollection;

  PlacesFirebase(){
    _firestore = FirebaseFirestore.instance;
    _placesCollection = _firestore.collection('places');
  }
}