import 'package:flutter/material.dart';
import 'package:lecture3/course.dart';
import 'package:lecture3/course_detail_screen.dart';
import 'package:lecture3/course_list_screen.dart';

void main() {
  runApp(CourseApp());
}

class CourseApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CourseAppState();
  }
}

class _CourseAppState extends State<CourseApp> {
  final courses = [
    Course(
      title: 'Math',
      code: 'MATH101',
      description: 'This is a math course',
    ),
    Course(
      title: 'Science',
      code: 'SCI101',
      description: 'This is a science course',
    ),
    Course(
      title: 'English',
      code: 'ENG101',
      description: 'This is an english course',
    ),
  ];
  Course? _selectedCourse;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Navigator(
        pages: [
          MaterialPage(
            key: const ValueKey('CourseListScreen'),
            child: CoursesListScreen(
              courses: courses,
              onTapped: _tabHandler,
            ),
          ),
          if (_selectedCourse != null)
            MaterialPage(
              key: const ValueKey('CourseListScreen'),
              child: CoursesListScreen(
                courses: courses,
                onTapped: _tabHandler,
              ),
            ),
        ],
        onPopPage: (route, result) {
          if (!route.didPop(result)) {
            return false;
          }
          setState(() {
            _selectedCourse = null;
          });
          return true;
        },
      ),
    );
  }

  void _tabHandler(Course course) {
    _selectedCourse = course;
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => CourseDetailsScreen(course: course),
    ));
  }
}
