import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:edu_crm/data/api_service.dart';
import 'package:edu_crm/domen/entity/organizationsubsubject/organization_sub_subject_model.dart';
import 'package:edu_crm/utils/app_const.dart';
import 'package:meta/meta.dart';

part 'org_sub_subjects_event.dart';

part 'org_sub_subjects_state.dart';

class OrgSubSubjectsBloc
    extends Bloc<OrgSubSubjectsEvent, OrgSubSubjectsState> {
  final apiService = ApiService(Dio(BaseOptions(headers: {
    "Authorization": "Bearer $token",
    "ngrok-skip-browser-warning": true
  })));

  OrgSubSubjectsBloc() : super(OrgSubSubjectsInitial()) {
    on<OrgSubSubjectAllEvent>((event, emit) async {
      emit(OrgSubSubjectsLoadingState());
      List<OrganizationSubSubjectModel> organizationModel =
          await apiService.getOrganizationSubSubjectsAll();
      emit(OrgSubSubjectDataState(
          organizationSubSubjectData: organizationModel));
    });
    on<OrgSubSubjectGetBySubjectIdEvent>((event, emit) async {
      emit(OrgSubSubjectsLoadingState());
      List<OrganizationSubSubjectModel> organizationModel =
          await apiService.getOrganizationSubSubjectBySort(event.subjectId);
      emit(OrgSubSubjectDataState(
          organizationSubSubjectData: organizationModel));
    });
  }
}
