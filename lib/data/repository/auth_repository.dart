import 'package:dio/dio.dart';
import 'package:dslsale/util/app_constant.dart';

class AuthRepo {
  final dio = Dio();

  Future<dynamic> login({required username, required password}) async {
    try {
      final data = {"username": username, "user_password": password};
      final response = await dio.post(AppConstant.loginUrl, data: data);
      if (response.statusCode == 200) {
        return data['username'];
      }
    } catch (e) {
      rethrow;
    }
    return null;
  }
}
