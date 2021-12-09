import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:project_airplane/models/destination_model.dart';

class DestinationService{
  CollectionReference _destinationCollection = 
      FirebaseFirestore.instance.collection('destinations');

  Future<List<DestinationModel>> getDestinations() async{

    try {
      QuerySnapshot querySnapshot = await _destinationCollection.get();

      List<DestinationModel> destinationList = querySnapshot.docs.map((e){
        return DestinationModel.fromJson(e.id, e.data() as Map<String, dynamic>);
      }).toList();
      
      return destinationList;
    } catch (e) {
      throw e;
    }
  }
}