import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:preview_appp/Features/home/data/repo/home_repo_impl.dart';
import 'package:preview_appp/core/utils/api_service.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl(
    getIt.get<ApiService>()
  ));
}

// get_it هي مكتبة بتساعدك تحقن (توصل) الكلاسات أو الخدمات (services) في أي مكان في مشروعك، من غير ما تعمل new.
//
// هي زي علبة سحرية بتحط فيها الكائنات (Objects) وتقدر تستدعيها من أي مكان بسهولة.
//
