import 'package:edu_crm/presentation/controller/blocs/org_subjects_bloc.dart';
import 'package:edu_crm/utils/app_const.dart';
import 'package:edu_selectable_part/edu_selectable_part.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TestScrenn extends StatefulWidget {
  const TestScrenn({super.key});

  @override
  State<TestScrenn> createState() => _TestScrennState();
}

class _TestScrennState extends State<TestScrenn> {
  final orgSubjectBloc = OrgSubjectsBloc();

  @override
  void initState() {
    super.initState();
    orgSubjectBloc.add(OrgSubjectAllDataEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocBuilder<OrgSubjectsBloc, OrgSubjectsState>(
          bloc: orgSubjectBloc,
          builder: (context, state) {
            late List<String> taps;
            if (state is OrgSubjectsDataState) {
              taps = state.organizationSubjectList.map((e) => e.name).toList();
            }
            return state is OrgSubjectsLoadingState
                ? const Center(child: CircularProgressIndicator())
                : state is OrgSubjectsDataState
                    ? EduSelectablePart(
                        tappedButtonTextStyle: const TextStyle(
                          fontFamily: "Inter",
                          fontSize: 14,
                          color: Color(0xFF5D5FEF),
                          fontWeight: medium,
                        ),
                        height: 20,
                        textStyle: const TextStyle(
                          fontFamily: "Inter",
                          fontSize: 14,
                          color: Color(0xFF4D515A),
                          fontWeight: medium,
                        ),
                        onChanged: (index) {
                          print(index);
                        },
                        elements: List.generate(
                          state.organizationSubjectList.length,
                          (index) => state.organizationSubjectList[index].name,
                        ),
                      )
                    : const SizedBox();
          },
        ),
      ),
    );
  }
}
