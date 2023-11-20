import 'package:flutter/material.dart';
import 'package:my_app/res/colors/app_color.dart';

import 'res/strings/app_strings.dart';
import 'state/note_state.dart';
import 'views/notes_view.dart';

class MyNotes extends StatelessWidget {
  const MyNotes({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppStrings.appName,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColor.primaryColor,
          background: Colors.black,
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
      ),
      home: NotesView(
        noteState: NoteState(),
      ),
    );
  }
}
