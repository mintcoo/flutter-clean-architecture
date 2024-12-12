import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:note_app/components/common/custom_text_field.dart';
import 'package:note_app/ui/colors.dart';

class AddEditNoteScreen extends StatelessWidget {
  const AddEditNoteScreen({super.key});

  // static const는 클래스 수준 상수, 모든 인스턴스가 공유하는 단 하나의 복사본이라
  // 인스턴스 생성없이 직접 접근 가능
  // 단 한번만 컴파일 타임에 할당이라 메모리 효율적
  static const List<Color> noteColors = [
    roseBud,
    primRose,
    blueGrey,
    amber,
    deepBlue,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.save,
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(16.r),
        decoration: const BoxDecoration(
          color: primRose,
        ),
        child: Column(
          children: [
            Row(children: [
              // noteColors.map((color) => Container(
              //   width: 30.r,
              //   height: 30.r,
              //   color: color,
              // )).toList(),
              Container(
                decoration: BoxDecoration(
                  color: noteColors[0],
                  borderRadius: BorderRadius.circular(8.r),
                ),
                width: 30.r,
                height: 30.r,
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
