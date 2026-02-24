import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:master_html/constants/consts.dart';
import 'package:master_html/resources/lists/lessons_list.dart';
import 'package:master_html/screens/learning_screen/learning_screen.dart';
import 'package:master_html/screens/quiz_screen/quiz_screen.dart';
import 'package:master_html/services/notification_service.dart';
import 'package:master_html/services/reminder_service.dart';

import '../../main.dart';
import '../quiz_cubit/quiz_cubit.dart';

//These strings are for shared preferences
const String onGoingLessonIndexKey = 'onGoingLessonIndex';
const String completedLessonsListKey = 'completedLessonsList';
const String learningStreakKey = 'learningStreak';
const String lastLearningDateKey = 'lastLearningDate';
const String achievementsKey = 'achievements';
const String totalStudyTimeKey = 'totalStudyTime';
const String quizScoresKey = 'quizScores';

class LessonCubit extends Cubit<LessonState> {
  LessonCubit() : super(LessonInitialState());

  List<String> completedLessonsList = [];
  int learningStreak = 0;
  DateTime? lastLearningDate;
  List<String> achievements = [];
  int totalStudyTime = 0;
  Map<String, int> quizScores = {};

  //This method gets the list of completed lessons
  List<String> getListOfCompletedLessons() {
    completedLessonsList = pref.getStringList(completedLessonsListKey) ?? [];
    return completedLessonsList;
  }

  //This method check if the use passed or failed the quiz
  bool didPassQuiz({required String resultText, required String lessonName, required BuildContext context}) {
    if (resultText == perfectConstString) {
      passThisLesson(lessonName: lessonName);
      updateLearningStreak();
      checkAchievements(context);
      ReminderService.updateLastStudyDate();
      return true;
    } else {
      return false;
    }
  }

  // This method is for retaking the quiz when the user fails to pass the quiz
  void retakeQuiz({required BuildContext context, required String lessonName}) {
    Navigator.of(context)
        .popAndPushNamed(QuizScreen.routeName, arguments: lessonName);
  }

  // This method is for retaking the lesson when the user fails to pass the quiz
  void retakeLesson(
      {required BuildContext context, required String lessonName}) {
    Navigator.of(context).pop();
    Navigator.of(context)
        .popAndPushNamed(LearningScreen.routeName, arguments: lessonName);
  }

  //This method is for moving forward to the next lesson
  void nextLesson({required BuildContext context}) {
    Navigator.of(context).pop();
    Navigator.of(context).popAndPushNamed(LearningScreen.routeName);
  }

  //This method will mark the lesson as completed and update everything required
  void passThisLesson({required String lessonName}) {
    if (!completedLessonsList.contains(lessonName)) {
      final int lessonNameIndex = AllLessonsList.indexOf(lessonName);
      pref.setInt(onGoingLessonIndexKey, lessonNameIndex + 1);
      completedLessonsList.add(lessonName);
      pref.setStringList(completedLessonsListKey, completedLessonsList);
      
      // Save quiz score
      quizScores[lessonName] = 100;
      pref.setString(quizScoresKey, quizScores.toString());
      
      //Emitting this state to update the progress indicator
      emit(LessonNextState());
    }
  }

  //This getter will get the on going lesson index for functioning the continue button
  int get onGoingLessonIndex {
    return pref.getInt(onGoingLessonIndexKey) ?? 0;
  }

  // Get learning streak
  int getLearningStreak() {
    learningStreak = pref.getInt(learningStreakKey) ?? 0;
    return learningStreak;
  }

  // Update learning streak
  void updateLearningStreak() {
    final today = DateTime.now();
    final lastDate = pref.getString(lastLearningDateKey);
    
    if (lastDate != null) {
      final lastLearning = DateTime.parse(lastDate);
      final difference = today.difference(lastLearning).inDays;
      
      if (difference == 1) {
        // Consecutive day
        learningStreak++;
      } else if (difference > 1) {
        // Streak broken
        learningStreak = 1;
      }
    } else {
      // First time learning
      learningStreak = 1;
    }
    
    pref.setInt(learningStreakKey, learningStreak);
    pref.setString(lastLearningDateKey, today.toIso8601String());
  }

  // Get achievements
  List<String> getAchievements() {
    final achievementsString = pref.getString(achievementsKey);
    if (achievementsString != null) {
      achievements = achievementsString.split(',');
    }
    return achievements;
  }

  // Check and award achievements
  void checkAchievements(BuildContext context) {
    final completedCount = completedLessonsList.length;
    final currentStreak = getLearningStreak();
    final previousAchievements = List<String>.from(achievements);
    
    // First lesson achievement
    if (completedCount >= 1 && !achievements.contains('first_lesson')) {
      achievements.add('first_lesson');
    }
    
    // 10 lessons achievement
    if (completedCount >= 10 && !achievements.contains('ten_lessons')) {
      achievements.add('ten_lessons');
    }
    
    // 25 lessons achievement
    if (completedCount >= 25 && !achievements.contains('quarter_way')) {
      achievements.add('quarter_way');
    }
    
    // 50 lessons achievement
    if (completedCount >= 50 && !achievements.contains('all_lessons')) {
      achievements.add('all_lessons');
    }
    
    // 3 day streak achievement
    if (currentStreak >= 3 && !achievements.contains('three_day_streak')) {
      achievements.add('three_day_streak');
    }
    
    // 7 day streak achievement
    if (currentStreak >= 7 && !achievements.contains('week_streak')) {
      achievements.add('week_streak');
    }
    
    // Perfect score achievement
    if (quizScores.values.every((score) => score == 100) && !achievements.contains('perfect_score')) {
      achievements.add('perfect_score');
    }
    
    pref.setString(achievementsKey, achievements.join(','));
    
    // Show notifications for new achievements
    final newAchievements = achievements.where((achievement) => !previousAchievements.contains(achievement)).toList();
    for (final achievement in newAchievements) {
      NotificationService.showAchievementNotification(
        context,
        getAchievementTitle(achievement),
        getAchievementDescription(achievement),
      );
    }
    
    // Show streak notification
    if (currentStreak >= 3 && currentStreak % 3 == 0) {
      NotificationService.showStreakNotification(context, currentStreak);
    }
    
    // Show progress notification
    final percentage = getProgressPercentage();
    NotificationService.showProgressNotification(context, percentage);
  }

  // Get achievement title
  String getAchievementTitle(String achievement) {
    switch (achievement) {
      case 'first_lesson':
        return 'First Steps';
      case 'ten_lessons':
        return 'Getting Started';
      case 'quarter_way':
        return 'Quarter Master';
      case 'all_lessons':
        return 'HTML Master';
      case 'three_day_streak':
        return 'Consistent Learner';
      case 'week_streak':
        return 'Dedicated Student';
      case 'perfect_score':
        return 'Perfect Score';
      default:
        return 'Achievement';
    }
  }

  // Get achievement description
  String getAchievementDescription(String achievement) {
    switch (achievement) {
      case 'first_lesson':
        return 'Completed your first lesson';
      case 'ten_lessons':
        return 'Completed 10 lessons';
      case 'quarter_way':
        return 'Completed 25 lessons';
      case 'all_lessons':
        return 'Completed all lessons';
      case 'three_day_streak':
        return '3-day learning streak';
      case 'week_streak':
        return '7-day learning streak';
      case 'perfect_score':
        return 'Got perfect scores on all quizzes';
      default:
        return 'Achievement unlocked';
    }
  }

  // Get progress percentage
  double getProgressPercentage() {
    return completedLessonsList.length / AllLessonsList.length * 100;
  }

  // Get next lesson name
  String getNextLessonName() {
    final nextIndex = onGoingLessonIndex;
    if (nextIndex < AllLessonsList.length) {
      return AllLessonsList[nextIndex];
    }
    return 'All lessons completed!';
  }

  // Set current lesson for review
  void setCurrentLesson(String lessonName) {
    final index = AllLessonsList.indexOf(lessonName);
    if (index != -1) {
      pref.setInt(onGoingLessonIndexKey, index);
      emit(LessonNextState());
    }
  }

  // Check if all lessons are completed
  bool isAllLessonsCompleted() {
    return completedLessonsList.length >= AllLessonsList.length;
  }

  // Get recently completed lessons for quick review
  List<String> getRecentlyCompletedLessons({int limit = 5}) {
    final completed = getListOfCompletedLessons();
    if (completed.length <= limit) return completed;
    return completed.sublist(completed.length - limit);
  }

  // Get all lessons
  List<String> getAllLessons() {
    return AllLessonsList;
  }

  // Get total study time (in minutes)
  int getTotalStudyTime() {
    // Estimate study time based on completed lessons (5 minutes per lesson)
    return completedLessonsList.length * 5;
  }

  // Get average quiz score
  double getAverageQuizScore() {
    if (quizScores.isEmpty) return 0.0;
    final total = quizScores.values.reduce((a, b) => a + b);
    return total / quizScores.length;
  }

  // Get study statistics
  Map<String, dynamic> getStudyStats() {
    return {
      'completedLessons': completedLessonsList.length,
      'totalLessons': AllLessonsList.length,
      'progressPercentage': getProgressPercentage(),
      'learningStreak': getLearningStreak(),
      'achievements': getAchievements().length,
      'nextLesson': getNextLessonName(),
    };
  }
}

//These are the state classes for this cubit
abstract class LessonState {}

class LessonInitialState extends LessonState {}

class LessonNextState extends LessonState {}
