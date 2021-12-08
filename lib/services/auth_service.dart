import 'package:firebase_auth/firebase_auth.dart';
import 'package:project_airplane/models/user_model.dart';
import 'package:project_airplane/services/user_service.dart';

class AuthService{
  FirebaseAuth _auth = FirebaseAuth.instance;

  Future<UserModel> signUp({required String email, required String password, required String name, String hobby = ''}) async {
    try{
      UserCredential result = await _auth.createUserWithEmailAndPassword(email: email, password: password);

      UserModel user = UserModel(
        id: result.user!.uid,
        email: email,
        name: name,
        hobby: hobby,
        balance: 280000000
      );

      await UserService().createUser(user);

      return user;
    }catch(e){
      throw e;
    }
  }

  Future<void> signOut() async {
    try{
      await _auth.signOut();
    }catch(e){
      throw e;
    }
  }
}