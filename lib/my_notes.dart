import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:my_app/repository/note_repository_impl.dart';
import 'package:my_app/res/colors/app_color.dart';
import 'package:provider/provider.dart';
import 'res/strings/app_strings.dart';
import 'view_model/note_view_model.dart';
import 'views/notes_view.dart';

class MyNotes extends StatelessWidget {
  const MyNotes({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<NoteViewModel>(
      create: (_) => NoteViewModel(
        noteRepository: NoteRepositoryImpl(),
      ),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const <Locale>[
          Locale('pl'),
          Locale('en'),
        ],
        title: AppStrings.appName,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: AppColor.primaryColor,
            background: Colors.black,
            brightness: Brightness.dark,
          ),
          useMaterial3: true,
        ),
        home: const NotesView(),
      ),
    );
  }
}
