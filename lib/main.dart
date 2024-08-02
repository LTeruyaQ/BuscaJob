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
import 'screens/splash_screen.dart';
import 'screens/sign_up_screen.dart';
import 'screens/privacy_policy_screen.dart';
import 'screens/select_resume_screen.dart';
import 'screens/resume_metrics_screen.dart';
import 'screens/resume_suggestions_screen.dart';
import 'screens/first_access_registration.dart'; // Importação da nova tela

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
      home: SplashScreen(),
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
        '/login': (context) => LoginScreen(),
        '/signup': (context) => SignUpScreen(),
        '/privacy-policy': (context) => PrivacyPolicyScreen(),
        '/select-resume': (context) => SelectResumeScreen(),
        '/resume-metrics': (context) => ResumeMetricsScreen(),
        '/resume-suggestions': (context) => ResumeSuggestionsScreen(),
        '/first-access': (context) => FirstAccessRegistration(), // Nova rota adicionada
      },
    );
  }
}
