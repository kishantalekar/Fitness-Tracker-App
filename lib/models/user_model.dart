// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class UserModel {
  final String user_id;
  final String email;
  final String username;
  final int age;
  final String gender;
  final double weight;
  final double height;
  final String fitness_goals;

  UserModel({
    required this.user_id,
    required this.email,
    required this.username,
    required this.age,
    required this.gender,
    required this.weight,
    required this.height,
    required this.fitness_goals,
  });

  UserModel copyWith({
    String? user_id,
    String? email,
    String? username,
    int? age,
    String? gender,
    double? weight,
    double? height,
    String? fitness_goals,
  }) {
    return UserModel(
      user_id: user_id ?? this.user_id,
      email: email ?? this.email,
      username: username ?? this.username,
      age: age ?? this.age,
      gender: gender ?? this.gender,
      weight: weight ?? this.weight,
      height: height ?? this.height,
      fitness_goals: fitness_goals ?? this.fitness_goals,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'user_id': user_id,
      'email': email,
      'username': username,
      'age': age,
      'gender': gender,
      'weight': weight,
      'height': height,
      'fitness_goals': fitness_goals,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      user_id: map['user_id'] as String,
      email: map['email'] as String,
      username: map['username'] as String,
      age: map['age'] as int,
      gender: map['gender'] as String,
      weight: map['weight'] as double,
      height: map['height'] as double,
      fitness_goals: map['fitness_goals'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'UserModel(user_id: $user_id, email: $email, username: $username, age: $age, gender: $gender, weight: $weight, height: $height, fitness_goals: $fitness_goals)';
  }

  @override
  bool operator ==(covariant UserModel other) {
    if (identical(this, other)) return true;

    return other.user_id == user_id &&
        other.email == email &&
        other.username == username &&
        other.age == age &&
        other.gender == gender &&
        other.weight == weight &&
        other.height == height &&
        other.fitness_goals == fitness_goals;
  }

  @override
  int get hashCode {
    return user_id.hashCode ^
        email.hashCode ^
        username.hashCode ^
        age.hashCode ^
        gender.hashCode ^
        weight.hashCode ^
        height.hashCode ^
        fitness_goals.hashCode;
  }
}
