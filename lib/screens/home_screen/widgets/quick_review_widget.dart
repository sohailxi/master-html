import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:master_html/cubits/lesson_cubit/lesson_cubit.dart';
import 'package:master_html/screens/learning_screen/learning_screen.dart';
import 'package:master_html/constants/consts.dart';

class QuickReviewWidget extends StatelessWidget {
  const QuickReviewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LessonCubit, LessonState>(
      builder: (context, state) {
        final lessonCubit = BlocProvider.of<LessonCubit>(context);
        final recentLessons = lessonCubit.getRecentlyCompletedLessons(limit: 3);
        
        if (recentLessons.isEmpty) {
          return const SizedBox.shrink();
        }

        return Card(
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.refresh,
                      color: orangeColor,
                      size: 24,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      'Quick Review',
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),
                    TextButton(
                      onPressed: () {
                        // Navigate to a full review screen or show more lessons
                        _showAllCompletedLessons(context, lessonCubit);
                      },
                      child: const Text('View All'),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                ...recentLessons.map((lessonName) => _buildReviewItem(
                  context,
                  lessonName,
                  lessonCubit,
                )),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildReviewItem(
    BuildContext context,
    String lessonName,
    LessonCubit lessonCubit,
  ) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: Theme.of(context).dividerColor.withValues(alpha: 0.2),
        ),
      ),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: orangeColor.withValues(alpha: 0.2),
          child: const Icon(
            Icons.check_circle,
            color: orangeColor,
            size: 20,
          ),
        ),
        title: Text(
          lessonName,
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
            fontWeight: FontWeight.w500,
          ),
        ),
        subtitle: Text(
          'Completed',
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
            color: Colors.green,
            fontWeight: FontWeight.w500,
          ),
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              onPressed: () {
                // Navigate to lesson for review
                lessonCubit.setCurrentLesson(lessonName);
                Navigator.of(context).pushNamed(LearningScreen.routeName);
              },
              icon: const Icon(
                Icons.visibility,
                size: 20,
              ),
              tooltip: 'Review Lesson',
            ),
            IconButton(
              onPressed: () {
                // Retake quiz
                Navigator.of(context).pushNamed(
                  '/quiz-screen',
                  arguments: lessonName,
                );
              },
              icon: const Icon(
                Icons.quiz,
                size: 20,
              ),
              tooltip: 'Retake Quiz',
            ),
          ],
        ),
      ),
    );
  }

  void _showAllCompletedLessons(BuildContext context, LessonCubit lessonCubit) {
    final allCompleted = lessonCubit.getListOfCompletedLessons();
    
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (context) => DraggableScrollableSheet(
        initialChildSize: 0.7,
        minChildSize: 0.5,
        maxChildSize: 0.9,
        expand: false,
        builder: (context, scrollController) => Column(
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Theme.of(context).cardColor,
                borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
              ),
              child: Row(
                children: [
                  const Icon(
                    Icons.history,
                    color: orangeColor,
                    size: 24,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    'Completed Lessons (${allCompleted.length})',
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () => Navigator.of(context).pop(),
                    icon: const Icon(Icons.close),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                controller: scrollController,
                itemCount: allCompleted.length,
                itemBuilder: (context, index) {
                  final lessonName = allCompleted[index];
                  return _buildReviewItem(context, lessonName, lessonCubit);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
} 