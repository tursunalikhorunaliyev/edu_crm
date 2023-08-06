part of 'subject_bloc.dart';

abstract class SubjectState {}

class SubjectInitialState extends SubjectState {}

class SubjectLoadingState extends SubjectState {}

class SubjectDataState extends SubjectState {
  final List<SubjectModel> subjectData;
  final List<SubjectModel> subSubjectList;

  SubjectDataState({required this.subjectData, required this.subSubjectList});
}
