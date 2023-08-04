part of 'org_sub_subjects_bloc.dart';

@immutable
abstract class OrgSubSubjectsEvent {}

class OrgSubSubjectAllEvent extends OrgSubSubjectsEvent {}

class OrgSubSubjectGetByEvent extends OrgSubSubjectsEvent {
  final int subSubjectId;

  OrgSubSubjectGetByEvent({required this.subSubjectId});
}
