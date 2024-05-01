import 'package:cloud_firestore/cloud_firestore.dart';


class chatService{

  //get instance of firesource
  final FirebaseFirestore _fireStore = FirebaseFirestore.instance;

  //get user stream


Stream<List<Map<String,dynamic>>> getUsersStream(){
  return _fireStore.collection("Users").snapshots().map((snapshot){
    //go through each individual user
   return snapshot.docs.map((doc){
    final user = doc.data(); 

    return user;
   }).toList();
    
  });
}
  //send message

  //get message


}