import 'package:flutter/material.dart';
import 'package:post_intl/resources.dart';


class FormPage extends StatefulWidget {
  FormPage({Key? key, required this.status}) : super(key: key);

  late String status;

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  Widget designResponse(BuildContext context, String major, String interest) {
    if (widget.status.contains("Leave") & major.contains("Sociology") &&
        interest.contains("Being active")) {
      return ResourcePage(
          title: "Get involved while you can!",
          suggestion: "Florida Running Club",
          detail:
              "Join Florida Running Club in the Fall semester Monday-Friday 6:30 PM at the track. ",
          link:
              "https://orgs.studentinvolvement.ufl.edu/Organization/Florida-Running-Club");
    } else if (widget.status.contains("Stay") &&
        major.contains("Nursing") &&
        interest.contains("A great career")) {
      return ResourcePage(
          title: "Find the job of your dreams",
          suggestion: "UF International Students and Scholars",
          detail:
              "Employment is available only to students who are in good academic standing and maintain their non-immigrant status. With the exception of work on the UF ... (see more at link below)",
          link:
              "https://internationalcenter.ufl.edu/f-1-student/f-1-status-requirements/employment");
    } else {
      return ResourcePage(
          title: "Build your lifelong network",
          suggestion: "Association of Engineers",
          detail:
              "A club or graduate and undergraduate students with skills, ideas and experiences worth sharing",
          link: "https://www.facebook.com/GatorACE/");
    }
  }

  Widget userStory(BuildContext context, String m, String i) {
    return Card(
      child: SizedBox(
        height: 100,
        width: 200,
        child: Column(
          children: [
            Text(
              "Major: $m",
            ),
            const Spacer(),
            Text("Interests: $i"),
            const Spacer(),
            ElevatedButton(
              child: const Text("Show me advice"),
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => designResponse(context, m, i))),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    String title = "Lets learn about you.";
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Center(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            userStory(context, "Sociology", "Being active"),
            userStory(context, "Nursing", "A great career"),
            userStory(context, "Computer Science", "Finding a network"),
          ],
        )));
  }
}
