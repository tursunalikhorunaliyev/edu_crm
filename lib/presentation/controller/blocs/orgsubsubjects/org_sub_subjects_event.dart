part of 'org_sub_subjects_bloc.dart';

@immutable
abstract class OrgSubSubjectsEvent {}

class OrgSubSubjectAllEvent extends OrgSubSubjectsEvent {}

class OrgSubSubjectGetBySubjectIdEvent extends OrgSubSubjectsEvent {
  final int subjectId;

  OrgSubSubjectGetBySubjectIdEvent({required this.subjectId});
}
