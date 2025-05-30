import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              return Row(children: [
                Text(
                  ((data['question_index'] as int) + 1).toString(),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text(data['question'] as String,
                          style: GoogleFonts.firaSansCondensed(
                            color: const Color(0xffddfff7),
                            fontSize: 20,
                          )),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(data['user_answer'] as String,
                          style: GoogleFonts.firaSansCondensed(
                            color: const Color(0xffd8d8f6),
                            fontSize: 17,
                          )),
                      Text(data['correct_answer'] as String,
                          style: GoogleFonts.firaSansCondensed(
                            color: const Color(0xff6eeb83),
                            fontSize: 17,
                          )),
                      const SizedBox(
                        height: 55,
                      ),
                    ],
                  ),
                ),
              ]);
            },
          ).toList(),
        ),
      ),
    );
  }
}
