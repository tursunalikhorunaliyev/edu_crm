part of 'org_sub_subjects_bloc.dart';

@immutable
abstract class OrgSubSubjectsState {}

class OrgSubSubjectsInitial extends OrgSubSubjectsState {}

class OrgSubSubjectsLoadingState extends OrgSubSubjectsState {}

class OrgSubSubjectDataState extends OrgSubSubjectsState {
  final List<OrganizationSubSubjectModel> organizationSubSubjectData;

  OrgSubSubjectDataState({required this.organizationSubSubjectData});
}
