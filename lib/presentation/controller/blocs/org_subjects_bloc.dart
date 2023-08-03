import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:edu_crm/data/api_service.dart';
import 'package:edu_crm/domen/entity/organizationsubject/organization_subject_model.dart';
import 'package:edu_crm/utils/app_const.dart';
import 'package:meta/meta.dart';
import 'package:retrofit/dio.dart';

part 'org_subjects_event.dart';

part 'org_subjects_state.dart';

class OrgSubjectsBloc extends Bloc<OrgSubjectsEvent, OrgSubjectsState> {
  final apiService =
      ApiService(Dio(BaseOptions(headers: {"Authorization": "Bearer $token", "ngrok-skip-browser-warning": true})));

  OrgSubjectsBloc() : super(OrgSubjectsInitial()) {
    on<OrgSubjectsEvent>((event, emit) async {
      List<OrganizationSubjectModel> organizationList =
          await apiService.getOrganizationSubject();
      emit(OrgSubjectsDataState(
          organizationSubjectList: organizationList));
    });
  }
}
