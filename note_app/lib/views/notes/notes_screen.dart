import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:note_app/components/notes/note_card.dart';
import 'package:note_app/domain/models/note_model.dart';
import 'package:note_app/ui/colors.dart';
import 'package:go_router/go_router.dart';
import 'package:note_app/views/notes/notes_event.dart';
import 'package:note_app/views/notes/notes_view_model.dart';
import 'package:provider/provider.dart';

class NoteScreen extends StatelessWidget {
  const NoteScreen({super.key});
  // 추가
  void onClickAdd(BuildContext context, viewModel) async {
    // 화면 이동 후 반환값 받기(넘어올 때 저장으로 넘어오면 true값을 반환)
    bool? isSaved = await context.push('/note');
    log('isSaved: $isSaved');
    if (isSaved != null && isSaved) {
      viewModel.onEvent(
        const NotesEvent.loadNotes(),
      );
    }
  }

  // 수정
  void onClickCardEdit(BuildContext context, viewModel, note) async {
    // 화면 이동 후 반환값 받기(넘어올 때 수정되어서 넘어오면 true값을 반환)
    bool? isEdit = await context.push(
      "/note",
      extra: note,
    );
    log('isEdit: $isEdit');
    if (isEdit != null && isEdit) {
      viewModel.onEvent(
        const NotesEvent.loadNotes(),
      );
    }
  }

  // 정렬 버튼 누르면 정렬 모달 보이도록
  void onClickSort(BuildContext context, viewModel) {
    viewModel.onEvent(
      const NotesEvent.showOrderDialog(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<NotesViewModel>();
    final state = viewModel.state;

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
        bottom: state.isShowOrderDialog
            ? PreferredSize(
                preferredSize: Size.fromHeight(50.h),
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  height: 50.h,
                  // 정렬 관련 UI 추가
                ),
              )
            : null,
        actions: [
          IconButton(
            onPressed: () => onClickSort(context, viewModel),
            icon: const Icon(
              Icons.sort,
            ),
            color: primRose,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => onClickAdd(context, viewModel),
        child: const Icon(
          Icons.add,
        ),
      ),
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 0, 0, 0),
        ),
        padding: EdgeInsets.all(16.r),
        child: ListView.builder(
          itemCount: state.notes.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                onClickCardEdit(context, viewModel, state.notes[index]);
              },
              child: NoteCard(
                note: state.notes[index],
                onClickDelete: () {
                  viewModel.onEvent(
                    NotesEvent.deleteNote(
                      state.notes[index],
                    ),
                  );
                  // 삭제 후 복구 버튼 스낵바 띄우기
                  final snackBar = SnackBar(
                    content: const Text('노트 삭제됨 ㅋ'),
                    action: SnackBarAction(
                      label: '취소',
                      onPressed: () {
                        viewModel.onEvent(
                          const NotesEvent.restoreNote(),
                        );
                      },
                    ),
                  );
                  ScaffoldMessenger.of(context)
                    ..clearSnackBars()
                    ..showSnackBar(snackBar);
                },
              ),
            );
          },
        ),
      ),
      // 오른쪽 아래 떠있는 버튼
    );
  }
}
