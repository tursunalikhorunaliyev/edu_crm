import 'package:edu_crm/domen/entity/education_level/education_level.dart';
import 'package:edu_crm/domen/entity/interests/interests_model.dart';
import 'package:edu_crm/domen/entity/login/login_model.dart';
import 'package:edu_crm/domen/entity/organizationsubject/organization_subject_model.dart';
import 'package:edu_crm/domen/entity/organizationsubsubject/organization_sub_subject_model.dart';
import 'package:edu_crm/domen/entity/physicalface/physical_face_model.dart';
import 'package:edu_crm/domen/entity/physicalstuffcreate/stuff_category_create_model.dart';
import 'package:edu_crm/domen/entity/stuffcategories.dart/stuff_categories_model.dart';
import 'package:edu_crm/domen/entity/stuffcategory/category_model.dart';
import 'package:retrofit/http.dart';
import 'package:dio/dio.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: "http://192.168.242.66:8080/api")
abstract class ApiService {
  factory ApiService(Dio dio) = _ApiService;

  //login
  @POST("/auth/login")
  Future<LoginModel> login(
    @Query("password") String password,
    @Query("username") String userName,
  );

  //register
  @POST("/auth/register")
  Future<String> register(
    @Query("org_id") int orfId,
    @Query("password") String password,
    @Query("username") String username,
  );

  //education-level all
  @GET("/education-level/all")
  Future<List<EducationLevel>> getAllEducationLevel();

  //interests  all
  @GET("/interests/all")
  Future<List<InterestsModel>> getAllointerests();

  //physical-stuff
  @GET("/pyhsical-stuff/all")
  Future<List<CategoryModel>> getStuffCategoryAll();

  // physical stuff by category
  @GET("/physical-stuff/by-category")
  Future<List<CategoryModel>> getStuffByCategory(@Query("cid") int cid);

  //stuff categories
  @GET("/physical-stuff/categories")
  Future<List<StuffCategories>> getAllCategories();

  // stuff category create
  @POST("/physical-stuff/create")
  Future<CreateModel> createCategory(
    @Query("cid") int cid,
    @Query("end_state") String endState,
    @Query("fid") int fid,
    @Query("start_date") String startDate,
  );

  // physical face all
  @GET("/physical-face/all")
  Future<List<PhysicalFaceModel>> getPhysicalFaceAll();

  // physical face create
  @POST("/physical-face/create")
  Future<CreateModel> createPhysicalFace(
    @Query("address") String address,
    @Query("birthday") String birthay,
    @Query("e_level") int eLevel,
    @Query("firstname") String firstName,
    @Query("identification") String identification,
    @Query("instagram") String? instagram,
    @Query("interests") String? interests,
    @Query("lastname") String lastName,
    @Query("middleName") String? middleName,
    @Query("phone1") String phone1,
    @Query("phone2") String? phone2,
    @Query("photo") String photo,
  );

  // physical face single
  @GET("/physical-face/single")
  Future<PhysicalFaceModel> getPhysicalFaceSingle(
    @Query("pId") int pId,
  );

//  fan va Yo'nalishlar
  @GET("/org/ss/org-subjects")
  Future<List<OrganizationSubjectModel>> getOrganizationSubject();

  @GET("/org/ss/all-by-org")
  Future<List<OrganizationSubSubjectModel>> getOrganizationAll();

  @GET("/org/ss/ss-by-org")
  Future<List<OrganizationSubSubjectModel>> getOrganizationSort(
      @Query("sid") int sid);
}
