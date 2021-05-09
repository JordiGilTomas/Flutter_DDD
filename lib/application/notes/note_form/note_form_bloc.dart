import 'dart:async';
import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_ddd/domain/notes/i_note_repository.dart';
import 'package:flutter_ddd/domain/notes/note.dart';
import 'package:flutter_ddd/domain/notes/note_failure.dart';
import 'package:flutter_ddd/domain/notes/todo_item.dart';
import 'package:flutter_ddd/domain/notes/value_objects.dart';
import 'package:flutter_ddd/presentation/notes/note_form/misc/todo_item_presentation_classes.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';

part 'note_form_event.dart';
part 'note_form_state.dart';
part 'note_form_bloc.freezed.dart';

@injectable
class NoteFormBloc extends Bloc<NoteFormEvent, NoteFormState> {
  final INoteRepository _noteRepository;

  NoteFormBloc(this._noteRepository) : super(NoteFormState.initial());

  @override
  Stream<NoteFormState> mapEventToState(
    NoteFormEvent event,
  ) async* {
    yield* event.map(initialized: (e) async* {
      yield e.initialNoteOption.fold(() => state,
          (initialNote) => state.copyWith(note: initialNote, isEditing: false));
    }, bodyChanged: (e) async* {
      yield state.copyWith(
        note: state.note.copyWith(body: NoteBody(e.bodyStr)),
        saveFailureOrSuccessOption: none(),
      );
    }, colorChanged: (e) async* {
      yield state.copyWith(
        note: state.note.copyWith(color: NoteColor(e.color)),
        saveFailureOrSuccessOption: none(),
      );
    }, todosChanged: (e) async* {
      yield state.copyWith(
        note: state.note.copyWith(
            todos: List3(
                e.todos.map<TodoItem>((primitive) => primitive.toDomain())
                    as KtList<TodoItem>)),
        saveFailureOrSuccessOption: none(),
      );
    }, saved: (e) async* {
      late Either<NoteFailure, Unit> failureOrSuccess;

      yield state.copyWith(
        isSaving: true,
        saveFailureOrSuccessOption: none(),
      );

      if (state.note.failureOption.isNone()) {
        failureOrSuccess = state.isEditing
            ? await _noteRepository.update(state.note)
            : await _noteRepository.create(state.note);
      }

      yield state.copyWith(
        isSaving: false,
        showErrorMessages: true,
        saveFailureOrSuccessOption: optionOf(failureOrSuccess),
      );
    });
  }
}
