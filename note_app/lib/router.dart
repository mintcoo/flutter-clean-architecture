import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
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
            return const AddEditNoteScreen();
          },
        ),
      ],
    ),
  ],
);
