import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:project_airplane/models/user_model.dart';

class UserService {
  CollectionReference _userCollection =
      FirebaseFirestore.instance.collection('users');
  
  Future<void> createUser(UserModel user) async {
      try {
        _userCollection.doc(user.id).set({
          'email': user.email,
          'name': user.name,
          'hobby': user.hobby,
          'balance': user.balance,
        });
      } catch (e) {
        throw e;
      }
  }

  Future<UserModel> getUser(String id) async {
    try {
      DocumentSnapshot snapshot = await _userCollection.doc(id).get();
      return UserModel(
        id: id,
        email: snapshot['email'],
        name: snapshot['name'],
        hobby: snapshot['hobby'],
        balance: snapshot['balance'],
      );
    } catch (e) {
      throw e;
    }
  }
}