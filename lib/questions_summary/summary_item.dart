import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/questions_summary/question_identifier.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem({super.key, required this.summaryData});

  final Map<String, Object> summaryData;

  @override
  Widget build(context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuestionIdentifier(
              questionIndex: summaryData['question_index'] as int,
              isCorrectAnswer:
                  summaryData['user_answer'] == summaryData['correct_answer']),
          const SizedBox(
            width: 20,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  summaryData['question'] as String,
                  style: GoogleFonts.lato(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  summaryData['user_answer'] as String,
                  style: const TextStyle(
                    color: Color.fromARGB(255, 183, 91, 107),
                  ),
                ),
                Text(
                  summaryData['correct_answer'] as String,
                  style: const TextStyle(
                    color: Color.fromARGB(255, 90, 164, 153),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
