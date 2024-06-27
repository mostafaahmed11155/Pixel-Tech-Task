class StudentInfo {
  String studentName;
  String activity;
  String grade;
  int busNumber;
  String busSupervisor;
  bool studentAttendance;

  // Constructor
  StudentInfo({
    required this.studentName,
    required this.activity,
    required this.grade,
    required this.busNumber,
    required this.busSupervisor,
    required this.studentAttendance,
  });

  factory StudentInfo.fromJson(Map<String, dynamic> json) {
    return StudentInfo(
      studentName: json['student_name'],
      activity: json['activity'],
      grade: json['grade'],
      busNumber: json['bus_number'],
      busSupervisor: json['bus_supervisor'],
      studentAttendance: json['studentAttendance'],
    );
  }
}
