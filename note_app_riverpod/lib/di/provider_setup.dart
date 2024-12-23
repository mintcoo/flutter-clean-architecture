import 'package:note_app/data/data_source/note_db.dart';
import 'package:note_app/data/repository/note_repository_imple.dart';
import 'package:note_app/domain/repository/note_repository.dart';
import 'package:note_app/domain/use_case/add_note_use_case.dart';
import 'package:note_app/domain/use_case/get_notes_use_case.dart';
import 'package:note_app/domain/use_case/use_cases.dart';
import 'package:note_app/views/add_edit_note/add_edit_note_view_model.dart';
import 'package:note_app/views/notes/notes_view_model.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:sqflite/sqflite.dart';

Future<List<SingleChildWidget>> getProviders() async {
  // db가 먼저 작성해야해서 이런식으로 구조를 짬
  Database database = await openDatabase(
    "notes_db",
    version: 1,
    onCreate: (db, version) {
      db.execute('''
          CREATE TABLE note (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            title TEXT,
            content TEXT,
            color INTEGER,
            createdAt INTEGER
          )
      ''');
    },
  );

  NoteDb noteDb = NoteDb(database);
  NoteRepository repository = NoteRepositoryImple(noteDb);
  UseCases useCases = UseCases(
      getNotes: GetNotesUseCase(repository),
      addNote: AddNoteUseCase(repository));
  NotesViewModel viewModel = NotesViewModel(repository, useCases: useCases);
  AddEditNoteViewModel addEditNoteViewModel = AddEditNoteViewModel(repository);

  // 원래는 이런식으로 짜는데 지금 db떄문에 함수형식이라 필요가없어짐
  // List<SingleChildWidget> independentProviders = [];

  // List<SingleChildWidget> dependentProviders = [];

  // List<SingleChildWidget> viewModels = [];

  // List<SingleChildWidget> globalProviders = [
  //   ...independentProviders,
  //   ...dependentProviders,
  //   ...viewModels,
  // ];
  // return globalProviders;

  return [
    ChangeNotifierProvider(create: (context) => viewModel),
    ChangeNotifierProvider(create: (context) => addEditNoteViewModel),
  ];
}
