import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:note_app/domain/models/note_model.dart';
import 'package:note_app/views/add_edit_note/add_edit_note_screen.dart';
import 'package:note_app/views/notes/notes_screen.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const NoteScreen();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'note',
          builder: (BuildContext context, GoRouterState state) {
            // state.extra에서 Note 객체를 받아옴
            final note = state.extra as Note?;
            return AddEditNoteScreen(note: note);
          },
        ),
      ],
    ),
  ],
);
