import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:note_app/components/common/custom_text_field.dart';
import 'package:note_app/domain/models/note_model.dart';
import 'package:note_app/ui/colors.dart';
import 'package:note_app/views/add_edit_note/add_edit_note_event.dart';
import 'package:note_app/views/add_edit_note/add_edit_note_view_model.dart';
import 'package:provider/provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AddEditNoteScreen extends ConsumerStatefulWidget {
  // 노트를 클릭해서 수정할 때 받음
  final Note? note;
  const AddEditNoteScreen({super.key, this.note});

  // static const는 클래스 수준 상수, 모든 인스턴스가 공유하는 단 하나의 복사본이라
  // 인스턴스 생성없이 직접 접근 가능
  // 단 한번만 컴파일 타임에 할당이라 메모리 효율적
  static const List<Color> noteColors = [
    roseBud,
    lightBlue,
    blueGrey,
    amber,
    lightGreen,
  ];

  @override
  ConsumerState<AddEditNoteScreen> createState() => _AddEditNoteScreenState();
}

class _AddEditNoteScreenState extends ConsumerState<AddEditNoteScreen> {
  final _titleController = TextEditingController();
  final _contentController = TextEditingController();
  StreamSubscription? _streamSubscription;

  @override
  void initState() {
    super.initState();

    // initState 메서드 내에서 비동기 작업을 수행하기 위해 Future.microtask 사용
    Future.microtask(() {
      final viewModel = context.read<AddEditNoteViewModel>();
      // 이벤트 스트림 리스너 추가
      _streamSubscription = viewModel.eventStream.listen((event) {
        event.when(
          saveNote: () {
            // 화면 닫아버리면서 true값이 넘어가면 save 버튼으로 넘어간 것 구분
            context.pop(true);
          },
          // 스낵바 이벤트 발생시 띄우기
          showSnackBar: (message) {
            final snackBar = SnackBar(
              content: Text(
                message,
              ),
            );
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          },
        );
      });
    });

    // 노트가 있으면 수정, 없으면 생성
    if (widget.note != null) {
      _titleController.text = widget.note!.title;
      _contentController.text = widget.note!.content;
    }
  }

  @override
  void dispose() {
    _titleController.dispose();
    _contentController.dispose();
    // 계속 리슨하면안되고 캔슬해줘야함 화면 바뀔때
    _streamSubscription?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<AddEditNoteViewModel>();
    final state = viewModel.state;

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          viewModel.onEvent(AddEditNoteEvent.saveNote(
            // 노트가 있으면 수정, 없으면 생성
            widget.note?.id,
            _titleController.text,
            _contentController.text,
          ));
        },
        child: const Icon(
          Icons.save,
        ),
      ),
      // 배경색 자연스럽게 변하는 효과 주기위해 Container 대신 AnimatedContainer 사용
      body: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: EdgeInsets.fromLTRB(16.w, 48.h, 16.w, 16.h),
        decoration: BoxDecoration(
          color: Color(viewModel.bgColor),
        ),
        child: Column(
          children: [
            Row(children: [
              Expanded(
                child: SizedBox(
                  height: 70.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: AddEditNoteScreen.noteColors
                        // 색상 리스트 만들어 줌
                        .map(
                          (color) => GestureDetector(
                            onTap: () {
                              viewModel.onEvent(
                                  AddEditNoteEvent.changeColor(color.value));
                            },
                            child: NoteColor(
                              color: color,
                              isSelected: viewModel.bgColor == color.value,
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ),
              ),
            ]),
            CustomTextField(
              controller: _titleController,
              placeholder: '제목을 입력하세요.',
              fontSize: 22.sp,
            ),
            CustomTextField(
              controller: _contentController,
              placeholder: '내용을 입력하세요.',
              fontSize: 16.sp,
            )
          ],
        ),
      ),
    );
  }
}

class NoteColor extends StatelessWidget {
  final bool isSelected;
  final Color color;

  const NoteColor({
    super.key,
    required this.color,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
        border: Border.all(
          color: isSelected ? Colors.black : Colors.transparent,
          width: 2.r,
        ),
      ),
      width: 45.r,
      height: 45.r,
    );
  }
}
