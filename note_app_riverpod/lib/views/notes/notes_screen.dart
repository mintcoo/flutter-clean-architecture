import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:note_app/components/notes/note_list_view.dart';
import 'package:note_app/domain/use_case/get_notes_use_case.dart';
import 'package:note_app/ui/colors.dart';
import 'package:go_router/go_router.dart';
import 'package:note_app/views/notes/notes_event.dart';
import 'package:note_app/views/notes/notes_view_model.dart';
import 'package:provider/provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class NoteScreen extends ConsumerStatefulWidget {
  const NoteScreen({super.key});

  @override
  ConsumerState<NoteScreen> createState() => _NoteScreenState();
}

class _NoteScreenState extends ConsumerState<NoteScreen> {
  late final TextEditingController _searchController;
  // bool showSearchField = false;
  // bool showOrderDialog = false;
  // bool existSearchQuery = false;

  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController();
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  // 추가
  void onClickAdd(BuildContext context, viewModel) async {
    // 화면 이동 후 반환값 받기(넘어올 때 저장으로 넘어오면 true값을 반환)
    bool? isSaved = await context.push('/note');
    log('isSaved: $isSaved');
    if (isSaved != null && isSaved) {
      viewModel.onEvent(
        NotesEvent.loadNotes(query: _searchController.text),
      );
    }
  }

  // 정렬 버튼 누르면 정렬 모달 보이도록
  void showSortDialog(BuildContext context, viewModel) {
    setState(() {
      viewModel.toggleOrderDialog();
    });
  }

  // 검색 버튼 누르면 검색창
  void showSearchBar(BuildContext context, viewModel) {
    viewModel.onEvent(const NotesEvent.toggleSearchField());
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = ref.read(noteViewModelProvider.notifier);
    final state = ref.watch(noteViewModelProvider);

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
            onPressed: () => showSearchBar(context, viewModel),
            icon: const Icon(
              Icons.search,
            ),
            color: primRose,
          ),
          IconButton(
            onPressed: () => showSortDialog(context, viewModel),
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
      body: RefreshIndicator(
        onRefresh: () async {
          // 새로고침 시 노트 목록 다시 불러오고 검색어 초기화
          viewModel.onEvent(
            const NotesEvent.loadNotes(),
          );
          _searchController.clear();
        },
        child: state.when(
          loading: () => const Center(
            child: CircularProgressIndicator(),
          ),
          error: (error, stackTrace) => Center(
            child: Text('에러가 발생했습니다: $error'),
          ),
          data: (notesState) => Column(
            children: [
              if (notesState.showSearchField)
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: SearchBar(
                    controller: _searchController,
                    trailing: [
                      viewModel.existSearchQuery
                          ? IconButton(
                              icon: const Icon(Icons.close_outlined),
                              visualDensity: VisualDensity.compact,
                              onPressed: () {
                                _searchController.clear();
                                setState(() {
                                  viewModel.setExistSearchQuery(false);
                                });
                              },
                            )
                          : const SizedBox.shrink(),
                      IconButton(
                        icon: const Icon(Icons.search),
                        visualDensity: VisualDensity.compact,
                        onPressed: () {
                          viewModel.onEvent(
                            NotesEvent.loadNotes(query: _searchController.text),
                          );
                        },
                      ),
                    ],
                    backgroundColor: const WidgetStatePropertyAll(Colors.white),
                    padding: WidgetStatePropertyAll(
                      EdgeInsets.only(
                        left: 12.w,
                        right: 6.w,
                      ),
                    ),
                    constraints: BoxConstraints(
                      minHeight: 40.h,
                    ),
                    shape: WidgetStateProperty.all(
                      ContinuousRectangleBorder(
                        borderRadius: BorderRadius.circular(15.r),
                      ),
                    ),
                    onChanged: (value) {
                      setState(() {
                        viewModel.setExistSearchQuery(value.isNotEmpty);
                      });
                    },
                    onSubmitted: (value) {
                      log('value: $value');
                      viewModel.onEvent(
                        NotesEvent.loadNotes(query: value),
                      );
                    },
                  ),
                ),

              // 위에서 아래로 슬라이드 애니메이션 적용
              AnimatedCrossFade(
                duration: const Duration(milliseconds: 150),
                crossFadeState: viewModel.showOrderDialog
                    ? CrossFadeState.showFirst
                    : CrossFadeState.showSecond,
                firstChild: Container(
                  padding: EdgeInsets.all(8.r),
                  decoration: const BoxDecoration(
                    color: Colors.black,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: ListTile(
                              contentPadding: EdgeInsets.zero,
                              visualDensity: VisualDensity.compact,
                              title: const Text(
                                'Title',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              leading: Radio<NoteOrder>(
                                value: NoteOrder.title,
                                groupValue: notesState.noteOrder,
                                onChanged: (NoteOrder? value) {
                                  viewModel.onEvent(
                                    NotesEvent.changeOrder(
                                      value!,
                                      _searchController.text,
                                    ),
                                  );
                                },
                                fillColor: WidgetStateProperty.all(primRose),
                              ),
                            ),
                          ),
                          Expanded(
                            child: ListTile(
                              contentPadding: EdgeInsets.zero,
                              visualDensity: VisualDensity.compact,
                              title: const Text(
                                'Date',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              leading: Radio<NoteOrder>(
                                value: NoteOrder.date,
                                groupValue: notesState.noteOrder,
                                onChanged: (NoteOrder? value) {
                                  viewModel.onEvent(
                                    NotesEvent.changeOrder(
                                      value!,
                                      _searchController.text,
                                    ),
                                  );
                                },
                                fillColor: WidgetStateProperty.all(primRose),
                              ),
                            ),
                          ),
                          Expanded(
                            child: ListTile(
                              contentPadding: EdgeInsets.zero,
                              visualDensity: VisualDensity.compact,
                              title: const Text(
                                'Color',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              leading: Radio<NoteOrder>(
                                value: NoteOrder.color,
                                groupValue: notesState.noteOrder,
                                onChanged: (NoteOrder? value) {
                                  viewModel.onEvent(
                                    NotesEvent.changeOrder(
                                      value!,
                                      _searchController.text,
                                    ),
                                  );
                                },
                                fillColor: WidgetStateProperty.all(primRose),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: ListTile(
                              contentPadding: EdgeInsets.zero,
                              visualDensity: VisualDensity.compact,
                              title: const Text(
                                'Ascending',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              leading: Radio<OrderDirection>(
                                value: OrderDirection.ascending,
                                groupValue: notesState.orderDirection,
                                onChanged: (OrderDirection? value) {
                                  viewModel.onEvent(
                                    NotesEvent.changeDirection(
                                      value!,
                                      _searchController.text,
                                    ),
                                  );
                                },
                                fillColor: WidgetStateProperty.all(primRose),
                              ),
                            ),
                          ),
                          Expanded(
                            child: ListTile(
                              contentPadding: EdgeInsets.zero,
                              visualDensity: VisualDensity.compact,
                              title: const Text(
                                'Descending',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              leading: Radio<OrderDirection>(
                                value: OrderDirection.descending,
                                groupValue: notesState.orderDirection,
                                onChanged: (OrderDirection? value) {
                                  viewModel.onEvent(
                                    NotesEvent.changeDirection(
                                      value!,
                                      _searchController.text,
                                    ),
                                  );
                                },
                                fillColor: WidgetStateProperty.all(primRose),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                secondChild: Container(
                  height: 0,
                ),
              ),
              const Expanded(
                child: NoteListView(),
              ),
            ],
          ),
        ),
      ), // 오른쪽 아래  떠있는 버튼
    );
  }
}
