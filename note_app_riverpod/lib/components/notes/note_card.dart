import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:note_app/domain/models/note_model.dart';

class NoteCard extends StatelessWidget {
  final Note note;
  final Function? onClickDelete;

  const NoteCard({
    super.key,
    required this.note,
    this.onClickDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 8.h),
      width: double.infinity,
      padding: EdgeInsets.all(16.r),
      decoration: BoxDecoration(
        color: Color(note.color),
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            note.title,
            style: TextStyle(
              fontSize: 22.sp,
              fontWeight: FontWeight.bold,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Expanded 사용하여 아이콘을 침범하지않고 텍스트를 다음줄로 넘긴다
              Expanded(
                child: Text(
                  note.content,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 14.sp,
                  ),
                ),
              ),
              // 쓰레기통 아이콘은 Stack과 Positioned을 사용하여 오른쪽 하단에 위치시킬 수도 있다
              GestureDetector(
                onTap: () {
                  // null이 아니라면 call
                  onClickDelete?.call();
                },
                child: const Icon(
                  Icons.delete,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
