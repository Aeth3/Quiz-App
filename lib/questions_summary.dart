import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary({super.key, required this.summaryData});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    Color questionColor;

    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              if (data['question_answer'] == data['user_answer']) {
                questionColor = const Color.fromARGB(255, 64, 234, 209);
              } else {
                questionColor = const Color.fromARGB(255, 220, 60, 170);
              }

              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      margin: const EdgeInsets.only(right: 20),
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: questionColor),
                      child: Text(
                        ((data['question_index'] as int) + 1).toString(),
                        style: const TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      )),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          data['question'] as String,
                          style: const TextStyle(
                              fontSize: 20, color: Colors.white),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          data['question_answer'] as String,
                          style: const TextStyle(
                              fontSize: 15,
                              color: Color.fromARGB(180, 0, 0, 0),
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          data['user_answer'] as String,
                          style: const TextStyle(
                              fontSize: 15,
                              color: Color.fromARGB(255, 64, 234, 209),
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 5,
                        )
                      ],
                    ),
                  ),
                ],
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
