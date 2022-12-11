import 'package:flutter/material.dart';

import '../model/student.dart';

class DisplayStudent extends StatefulWidget {
  const DisplayStudent({super.key});

  @override
  State<DisplayStudent> createState() => _DisplayStudentState();
}

class _DisplayStudentState extends State<DisplayStudent> {
  List<Student> lstStudents = [];
  @override
  void didChangeDependencies() {
    lstStudents = ModalRoute.of(context)!.settings.arguments as List<Student>;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(" Student Details"),
        ),
        body: lstStudents.isNotEmpty
            ? ListView.builder(
                itemCount: lstStudents.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text("${lstStudents[index].fname!}"
                        " ${lstStudents[index].lname!}"),
                    subtitle: Text(lstStudents[index].address!),
                    trailing: Wrap(
                      spacing: 8,
                      children: [
                        IconButton(
                          icon: const Icon(Icons.delete),
                          onPressed: () {
                            setState(() {
                              lstStudents.removeAt(index);
                            });
                          },
                        ),
                        IconButton(
                          icon: const Icon(Icons.edit),
                          onPressed: () {
                            
                          },
                        ),
                      ],
                    ),
                  );
                },
              )
            : const Center(
                child: Text("No data found"),
              ));
  }
}
