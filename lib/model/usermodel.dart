import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  final String id;
  String namaLengkap;
  final String email;
  final String noTelfon;
  final String gender;

  UserModel(
      {required this.id,
      required this.namaLengkap,
      required this.email,
      required this.noTelfon,
      required this.gender});

  static UserModel empty() =>
      UserModel(id: '', namaLengkap: '', email: '', noTelfon: '', gender: '');
  Map<String, dynamic> toJson() {
    return {
      'NamaLengkap': namaLengkap,
      'Email': email,
      'NomorTelfon': noTelfon,
      'Kelamin': gender
    };
  }

  factory UserModel.fromSnapshot(
      DocumentSnapshot<Map<String, dynamic>> documentSnapshot) {
    if (documentSnapshot.data() != null) {
      final data = documentSnapshot.data()!;
      return UserModel(
        id: documentSnapshot.id,
        namaLengkap: data['NamaLengkap'] ?? '',
        email: data['Email'] ?? '',
        noTelfon: data['NomorTelfon'] ?? '',
        gender: data['Kelamin'] ?? '',
      );
    }
    return UserModel.empty();
  }
}
