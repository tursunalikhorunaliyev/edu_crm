part of 'org_subjects_bloc.dart';

@immutable
abstract class OrgSubjectsState {}

class OrgSubjectsInitial extends OrgSubjectsState {}

class OrgSubjectsLoadingState extends OrgSubjectsState {}

class OrgSubjectsDataState extends OrgSubjectsState {
  final List<OrganizationSubjectModel> organizationSubjectList;

  OrgSubjectsDataState({required this.organizationSubjectList});
}
