import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:master_html/cubits/lesson_cubit/lesson_cubit.dart';
import 'package:master_html/constants/consts.dart';

class AchievementsScreen extends StatelessWidget {
  static const routeName = '/achievements-screen';

  const AchievementsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Achievements & Stats"),
      ),
      body: BlocBuilder<LessonCubit, LessonState>(
        builder: (context, state) {
          final lessonCubit = BlocProvider.of<LessonCubit>(context);
          final stats = lessonCubit.getStudyStats();
          final achievements = lessonCubit.getAchievements();
          
          return SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Learning Statistics Card
                Card(
                  elevation: 4,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Learning Statistics",
                          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                            fontWeight: FontWeight.bold,
                            color: orangeColor,
                          ),
                        ),
                        const SizedBox(height: 16),
                        _buildStatRow("Lessons Completed", "${stats['completedLessons']}/${stats['totalLessons']}"),
                        _buildStatRow("Progress", "${stats['progressPercentage'].toStringAsFixed(1)}%"),
                        _buildStatRow("Learning Streak", "${stats['learningStreak']} days"),
                        _buildStatRow("Achievements Unlocked", "${stats['achievements']}"),
                        _buildStatRow("Next Lesson", stats['nextLesson']),
                      ],
                    ),
                  ),
                ),
                
                const SizedBox(height: 24),
                
                // Achievements Section
                Text(
                  "Achievements",
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: orangeColor,
                  ),
                ),
                const SizedBox(height: 16),
                
                if (achievements.isEmpty)
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(32.0),
                      child: Column(
                        children: [
                          Icon(
                            Icons.emoji_events_outlined,
                            size: 64,
                            color: Colors.grey[400],
                          ),
                          const SizedBox(height: 16),
                          Text(
                            "No achievements yet",
                            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                              color: Colors.grey[600],
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            "Complete lessons and maintain learning streaks to unlock achievements!",
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              color: Colors.grey[500],
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                else
                  ...achievements.map((achievement) => _buildAchievementCard(
                    context,
                    lessonCubit.getAchievementTitle(achievement),
                    lessonCubit.getAchievementDescription(achievement),
                    _getAchievementIcon(achievement),
                  )),
                
                const SizedBox(height: 24),
                
                // All Available Achievements
                Text(
                  "Available Achievements",
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: orangeColor,
                  ),
                ),
                const SizedBox(height: 16),
                
                _buildAvailableAchievementCard(
                  context,
                  "First Steps",
                  "Complete your first lesson",
                  Icons.first_page,
                  achievements.contains('first_lesson'),
                ),
                _buildAvailableAchievementCard(
                  context,
                  "Getting Started",
                  "Complete 10 lessons",
                  Icons.trending_up,
                  achievements.contains('ten_lessons'),
                ),
                _buildAvailableAchievementCard(
                  context,
                  "Quarter Master",
                  "Complete 25 lessons",
                  Icons.star_half,
                  achievements.contains('quarter_way'),
                ),
                _buildAvailableAchievementCard(
                  context,
                  "HTML Master",
                  "Complete all lessons",
                  Icons.emoji_events,
                  achievements.contains('all_lessons'),
                ),
                _buildAvailableAchievementCard(
                  context,
                  "Consistent Learner",
                  "3-day learning streak",
                  Icons.local_fire_department,
                  achievements.contains('three_day_streak'),
                ),
                _buildAvailableAchievementCard(
                  context,
                  "Dedicated Student",
                  "7-day learning streak",
                  Icons.whatshot,
                  achievements.contains('week_streak'),
                ),
                _buildAvailableAchievementCard(
                  context,
                  "Perfect Score",
                  "Get perfect scores on all quizzes",
                  Icons.verified,
                  achievements.contains('perfect_score'),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildStatRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            value,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: orangeColor,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAchievementCard(BuildContext context, String title, String description, IconData icon) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      color: orangeColor.withValues(alpha: 0.1),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: orangeColor,
          child: Icon(icon, color: Colors.white),
        ),
        title: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: orangeColor,
          ),
        ),
        subtitle: Text(description),
        trailing: const Icon(
          Icons.check_circle,
          color: Colors.green,
        ),
      ),
    );
  }

  Widget _buildAvailableAchievementCard(BuildContext context, String title, String description, IconData icon, bool unlocked) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      color: unlocked ? orangeColor.withValues(alpha: 0.1) : Colors.grey[100],
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: unlocked ? orangeColor : Colors.grey[400],
          child: Icon(icon, color: Colors.white),
        ),
        title: Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: unlocked ? orangeColor : Colors.grey[600],
          ),
        ),
        subtitle: Text(
          description,
          style: TextStyle(
            color: unlocked ? Colors.black87 : Colors.grey[500],
          ),
        ),
        trailing: Icon(
          unlocked ? Icons.check_circle : Icons.lock,
          color: unlocked ? Colors.green : Colors.grey[400],
        ),
      ),
    );
  }

  IconData _getAchievementIcon(String achievement) {
    switch (achievement) {
      case 'first_lesson':
        return Icons.first_page;
      case 'ten_lessons':
        return Icons.trending_up;
      case 'quarter_way':
        return Icons.star_half;
      case 'all_lessons':
        return Icons.emoji_events;
      case 'three_day_streak':
        return Icons.local_fire_department;
      case 'week_streak':
        return Icons.whatshot;
      case 'perfect_score':
        return Icons.verified;
      default:
        return Icons.emoji_events;
    }
  }
} 