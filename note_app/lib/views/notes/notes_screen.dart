import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:note_app/components/notes/note_card.dart';
import 'package:note_app/domain/models/note_model.dart';
import 'package:note_app/ui/colors.dart';
import 'package:go_router/go_router.dart';

class NoteScreen extends StatelessWidget {
  const NoteScreen({super.key});

  void onClickAdd(BuildContext context) {
    context.push('/note');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Note App',
          style: TextStyle(
            color: primRose,
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () => {},
            icon: const Icon(
              Icons.sort,
            ),
            color: primRose,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => onClickAdd(context),
        child: const Icon(
          Icons.add,
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        padding: EdgeInsets.all(16.r),
        child: Column(
          children: [
            NoteCard(
              note: Note(
                title: 'title',
                content: 'content',
                color: roseBud.value,
                createdAt: DateTime.now().millisecondsSinceEpoch,
              ),
            ),
          ],
        ),
      ),
      // 오른쪽 아래 떠있는 버튼
    );
  }
}
