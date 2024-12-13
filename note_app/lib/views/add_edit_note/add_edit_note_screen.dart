import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:note_app/components/common/custom_text_field.dart';
import 'package:note_app/ui/colors.dart';

class AddEditNoteScreen extends StatefulWidget {
  const AddEditNoteScreen({super.key});

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
  State<AddEditNoteScreen> createState() => _AddEditNoteScreenState();
}

class _AddEditNoteScreenState extends State<AddEditNoteScreen> {
  // 배경색
  Color _bgColor = primRose;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.save,
        ),
      ),
      // 배경색 자연스럽게 변하는 효과 주기위해 Container 대신 AnimatedContainer 사용
      body: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: EdgeInsets.fromLTRB(16.w, 48.h, 16.w, 16.h),
        decoration: BoxDecoration(
          color: _bgColor,
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
                              setState(() {
                                _bgColor = color;
                              });
                            },
                            child: NoteColor(
                              color: color,
                              isSelected: _bgColor == color,
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ),
              ),
            ]),
            CustomTextField(
              placeholder: '제목을 입력하세요.',
              fontSize: 22.sp,
            ),
            CustomTextField(
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
