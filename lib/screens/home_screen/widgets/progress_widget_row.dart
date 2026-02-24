import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:master_html/cubits/lesson_cubit/lesson_cubit.dart';
import 'package:master_html/resources/lists/lessons_list.dart';

import '../../../constants/consts.dart';

class ProgressWidgetRow extends StatelessWidget {
  const ProgressWidgetRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final smallTextTheme = Theme.of(context).textTheme.bodySmall;
    return Padding(
      padding: const EdgeInsets.only(left: 24.0, right: 24, top: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Learning Progress",
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              GestureDetector(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                            backgroundColor:
                                Theme.of(context).scaffoldBackgroundColor,
                            actions: [
                              TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  style: ButtonStyle(
                                    overlayColor:
                                        WidgetStateColor.resolveWith(
                                            (states) => Theme.of(context)
                                                .cardTheme
                                                .color!),
                                  ),
                                  child: const Text(
                                    "Ok",
                                    style: TextStyle(
                                        color: orangeColor,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  )),
                            ],
                            alignment: Alignment.center,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                            content: SizedBox(
                              height: 170,
                              width: 100,
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.only(right: 6.0,top: 6 , bottom: 6),
                                        child: Icon(
                                          Icons.info,
                                          size: 30,
                                        ),
                                      ),
                                      Text(
                                        "Info",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headlineLarge,
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Complete 100% on learning progress to receive your certificate.\n",
                                    style: smallTextTheme,
                                  ),
                                  Text(
                                    "Finish quizzes to fill your progress bar. Good luck!",
                                    style: smallTextTheme,
                                  ),
                                ],
                              ),
                            ),
                          ),
                      useSafeArea: true);
                },
                child: const Text(
                  "What's this?",
                  style: TextStyle(
                      height: 1.5,
                      color: orangeColor,
                      fontSize: 15,
                      fontWeight: FontWeight.w300),
                ),
              )
            ],
          ),
          const SizedBox(height: 15),
          BlocBuilder<LessonCubit, LessonState>(builder: (context, state) {
            final lessonCubit = BlocProvider.of<LessonCubit>(context);
            final double percentage = lessonCubit.getProgressPercentage();
            final int learningStreak = lessonCubit.getLearningStreak();
            return Stack(children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: LinearProgressIndicator(
                  value: percentage / 100,
                  backgroundColor: const Color(0xff986919),
                  minHeight: 45,
                  color: const Color(0xffFEA000),
                ),
              ),
              Center(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text(
                      "${percentage.toStringAsFixed(1)}%",
                      style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                        color: const Color(0xffe6e6e6),
                        shadows: <Shadow>[
                          const Shadow(
                            offset: Offset(0.7, 0.95),
                            blurRadius: 3.0,
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                        ],
                      ),
                    ),
                    if (learningStreak > 0)
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Icon(
                            Icons.local_fire_department,
                            color: Color(0xffFEA000),
                            size: 16,
                          ),
                          const SizedBox(width: 4),
                          Text(
                            "$learningStreak day streak",
                            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              color: const Color(0xffe6e6e6),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                  ],
                ),
              ))
            ]);
          }),
        ],
      ),
    );
  }
}
