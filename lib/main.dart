import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
import 'screens/login_screen_details.dart';
import 'screens/home_page.dart';
import 'screens/notification_page.dart';
import 'screens/settings_page.dart';
import 'screens/tests_page.dart';
import 'screens/submit_resume_page.dart';
import 'screens/available_jobs_page.dart';
import 'screens/job_details_page.dart';
import 'screens/match_jobs_page.dart';
import 'screens/applied_job_summary_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BuscaJob',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginScreen(),
      routes: {
        '/login-details': (context) => LoginScreenDetails(),
        '/home': (context) => HomePage(),
        '/notifications': (context) => NotificationPage(),
        '/settings': (context) => SettingsPage(),
        '/tests': (context) => TestsPage(),
        '/submit-resume': (context) => SubmitResumePage(),
        '/available-jobs': (context) => AvailableJobsPage(),
        '/job-details': (context) => JobDetailsPage(),
        '/match-jobs': (context) => MatchJobsPage(),
        '/applied-job-summary': (context) => AppliedJobSummaryPage(),
      },
    );
  }
}
