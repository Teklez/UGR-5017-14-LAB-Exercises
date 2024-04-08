import 'package:flutter/material.dart';

class Course {
  String code;
  String title;
  String description;

  Course({
    required this.code,
    required this.title,
    required this.description,
  });
}

// course list screeen


class CoursesListScreen extends StatelessWidget {
  const CoursesListScreen({required this.courses,required this.onTapped})
  final List<Course> courses;
  final void Function(Course course) onTapped;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title: const Text('Courses List'),),
      body: ListView(
        children: [
          for (var course in courses)
          ListTile(
            title: Text(course.title),
            subtitle: Text(course.code),
            onTap: () => onTapped(course),
          ),
        ],),
    );
  }
}