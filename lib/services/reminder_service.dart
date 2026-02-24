import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ReminderService {
  static const String lastStudyDateKey = 'last_study_date';
  static const String reminderEnabledKey = 'reminder_enabled';
  
  static Future<void> setReminderEnabled(bool enabled) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(reminderEnabledKey, enabled);
  }
  
  static Future<bool> isReminderEnabled() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(reminderEnabledKey) ?? true;
  }
  
  static Future<void> updateLastStudyDate() async {
    final prefs = await SharedPreferences.getInstance();
    final now = DateTime.now();
    await prefs.setString(lastStudyDateKey, now.toIso8601String());
  }
  
  static Future<DateTime?> getLastStudyDate() async {
    final prefs = await SharedPreferences.getInstance();
    final dateString = prefs.getString(lastStudyDateKey);
    if (dateString != null) {
      return DateTime.parse(dateString);
    }
    return null;
  }
  
  static Future<bool> shouldShowReminder() async {
    if (!await isReminderEnabled()) return false;
    
    final lastStudyDate = await getLastStudyDate();
    if (lastStudyDate == null) return true;
    
    final now = DateTime.now();
    final difference = now.difference(lastStudyDate).inDays;
    
    // Show reminder if user hasn't studied for 2 or more days
    return difference >= 2;
  }
  
  static void showStudyReminder(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Row(
            children: [
              const Icon(
                Icons.school,
                color: Colors.blue,
                size: 28,
              ),
              const SizedBox(width: 8),
              const Text('Time to Study!'),
            ],
          ),
          content: const Text(
            'Keep your learning streak alive! Take a few minutes to learn something new today.',
            style: TextStyle(fontSize: 16),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Later'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
                // Navigate to home screen to start learning
                Navigator.of(context).pushNamedAndRemoveUntil(
                  '/',
                  (route) => false,
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF2196F3),
                foregroundColor: Colors.white,
              ),
              child: const Text('Start Learning'),
            ),
          ],
        );
      },
    );
  }
  
  static void showWelcomeBackDialog(BuildContext context, int daysMissed) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Row(
            children: [
              const Icon(
                Icons.celebration,
                color: Colors.orange,
                size: 28,
              ),
              const SizedBox(width: 8),
              const Text('Welcome Back!'),
            ],
          ),
          content: Text(
            'Great to see you again! You\'ve been away for $daysMissed day${daysMissed > 1 ? 's' : ''}. Let\'s continue your learning journey!',
            style: const TextStyle(fontSize: 16),
          ),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFFF9800),
                foregroundColor: Colors.white,
              ),
              child: const Text('Let\'s Go!'),
            ),
          ],
        );
      },
    );
  }
} 