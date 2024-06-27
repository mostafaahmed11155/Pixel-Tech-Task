import 'package:flutter/cupertino.dart';
import 'package:pixel_tech_task/model/student.dart';
import 'package:pixel_tech_task/services/json_services.dart';

class HomeViewModel with ChangeNotifier{
  List<StudentInfo> studentData = [];

  getStudentsData()async{
    studentData.clear();
   final List<dynamic> jsonData = await loadJsonData(jsonFilePath: "assets/data/students_data.json");
   for (var studentJson in jsonData) {
     studentData.add(StudentInfo.fromJson(studentJson));
   }
   notifyListeners();
 }
}