import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:edu_crm/data/api_service.dart';
import 'package:edu_crm/utils/app_const.dart';

import '../../../../domen/entity/subjects/subject_model.dart';

part 'subject_event.dart';

part 'subject_state.dart';

class SubjectBloc extends Bloc<SubjectEvent, SubjectState> {
  final apiService = ApiService(Dio(BaseOptions(headers: {
    "Authorization": "Bearer $token",
    "ngrok-skip-browser-warning": true
  })));

  SubjectBloc() : super(SubjectInitialState()) {
    on<SubjectAndSubSubjectsEvent>((event, emit) async {
      emit(SubjectLoadingState());
      List<SubjectModel> subjectList = await apiService.getAllSubjects();
      List<SubjectModel> subSubjectList = await apiService.getAllSubSubjects();
       emit(SubjectDataState(subjectData: subjectList, subSubjectList: subSubjectList));
    });

  }
}
