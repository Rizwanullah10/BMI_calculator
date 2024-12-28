import '../enums/gender_enum.dart';

class BMIDataModel {
  final Gender mGender;
  final int mHeight;
  final int mWeight;
  final int mAge;

  BMIDataModel({
    required this.mGender,
    required this.mHeight,
    required this.mWeight,
    required this.mAge,
  });
}
