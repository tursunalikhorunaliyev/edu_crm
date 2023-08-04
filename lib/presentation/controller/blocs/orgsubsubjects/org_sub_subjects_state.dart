part of 'org_sub_subjects_bloc.dart';

@immutable
abstract class OrgSubSubjectsState {}

class OrgSubSubjectsInitial extends OrgSubSubjectsState {}

class OrgSubSubjectsLoadingState extends OrgSubSubjectsState {}

class OrgSubSubjectAllDataState extends OrgSubSubjectsState {
  final List<OrganizationSubSubjectModel> organizationAllSubDataModel;

  OrgSubSubjectAllDataState({required this.organizationAllSubDataModel});
}
