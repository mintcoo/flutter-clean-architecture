// 리스트뷰를 따로 widget으로 만들어야 검색, 필터 상태 변경 시 재렌더링 X
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:note_app/components/common/global_modal.dart';
import 'package:note_app/components/notes/note_card.dart';
import 'package:note_app/domain/models/note_model.dart';
import 'package:note_app/ui/colors.dart';
import 'package:note_app/views/notes/notes_event.dart';
import 'package:note_app/views/notes/notes_view_model.dart';
import 'package:provider/provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class NoteListView extends ConsumerWidget {
  // final TextEditingController searchController;

  const NoteListView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.read(noteViewModelProvider.notifier);
    final state = ref.watch(noteViewModelProvider);

    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 0, 0, 0),
      ),
      padding: EdgeInsets.all(16.r),
      child: FutureBuilder(
        future: Future.delayed(const Duration(seconds: 1)),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(
                color: primRose,
              ),
            );
          }

          return state.when(
            loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
            error: (error, stackTrace) => Center(
              child: Text('에러가 발생했습니다: $error'),
            ),
            data: (notesState) => ListView.builder(
              itemCount: notesState.notes.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () => _onClickCardEdit(
                      context, viewModel, notesState.notes[index]),
                  child: NoteCard(
                    note: notesState.notes[index],
                    onClickDelete: () => _handleDelete(
                        context, viewModel, notesState.notes[index]),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }

  // 수정
  void _onClickCardEdit(BuildContext context, viewModel, note) async {
    // 화면 이동 후 반환값 받기(넘어올 때 수정되어서 넘어오면 true값을 반환)
    bool? isEdit = await context.push(
      "/note",
      extra: note,
    );

    if (isEdit != null && isEdit) {
      viewModel.onEvent(
        NotesEvent.loadNotes(query: viewModel.state.searchQuery),
      );
    }
  }

  void _handleDelete(BuildContext context, viewModel, Note note) async {
    final isConfirm = await GlobalModal.confirm(
      context,
      content: "삭제하시겠습니까?",
    );

    // if (isConfirm) {
    //   viewModel.onEvent(NotesEvent.deleteNote(note));
    //   final snackBar = SnackBar(
    //     content: const Text('노트 삭제됨 ㅋ'),
    //     action: SnackBarAction(
    //       label: '취소',
    //       onPressed: () {
    //         viewModel.onEvent(const NotesEvent.restoreNote());
    //       },
    //     ),
    //   );
    //   ScaffoldMessenger.of(context)
    //     ..clearSnackBars()
    //     ..showSnackBar(snackBar);
    // }
  }
}
