class AssignmentData{
  final String  subjectName;
  final String topicName;
  final String assignDate;
  final String lastDate;
  final String status;
  AssignmentData(this.subjectName, this.topicName, this.assignDate, this.lastDate, this.status);
}
List<AssignmentData>assignment =[
  AssignmentData("Biology", "Red Blood cellas", "17 Nov 2021", "20 Nov 2021", "pending"),
  AssignmentData("Physics", "Bool thery", "17 Nov 2021", "17 Nov 2021", "Submited"),
  AssignmentData("Chemistry", "orginic chemistry", "21 oct 2021", "27 oct 2021", "Not  submitted"),
  AssignmentData("Mathematics", "ring theroy", "18 set 2021", "30 sep 2021", "pending"),
];