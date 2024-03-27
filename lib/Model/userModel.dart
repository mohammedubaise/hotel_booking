class UsersModel{
  String?email;
  String?fullName;
  String?password;
  String?dateofBirth;
  String?phoneNumber;
  String?gender;
  String?image;
  UsersModel({
    this.email,
    this.fullName,
    this.password,
    this.dateofBirth,
    this.phoneNumber,
    this.gender,
    this.image,
});
  Map<String,dynamic> toMap(){
    return{
      'name':fullName,
      'nickName':password,
      'email':email,
      'DOB':dateofBirth,
      'phone':phoneNumber,
      'gender':gender,
      'image':image
    };
  }
  factory UsersModel.fromMap(Map<String,dynamic>map){
    return UsersModel(
      fullName: map['fullname']??"",
      password: map['password']??"",
      email: map['email']??"",
      dateofBirth: map['dateofBirth']??"",
      phoneNumber: map['phoneNumber']??"",
      gender: map['gender']??"",
      image: map['image']??"",
    );
  }
  UsersModel copyWith({
    String?fullName,
    String?password,
    String? email,
    String? dateofBirth,
    String? phoneNumber,
    String? gender,
    String? image,
  }){
    return UsersModel(
      fullName: fullName??this.fullName,
      password: password??this.password,
      email: email ?? this.email,
      dateofBirth: dateofBirth ?? this.dateofBirth,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      gender: gender ?? this.gender,
      image: gender ?? this.image,
    );
  }
}