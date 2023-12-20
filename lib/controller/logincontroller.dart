import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class Logincontrol extends GetxController {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<List<QueryDocumentSnapshot<Object?>>> getCarinformationData() async {
    final QuerySnapshot carinformData =
        await _firestore.collection('carinform').get();
    return carinformData.docs;
  }
}
