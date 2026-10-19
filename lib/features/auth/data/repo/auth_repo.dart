import 'package:dio/dio.dart';

class AuthRepo {
  Dio dio = Dio();
  Future<bool> login({required String email, required String password}) async {
    try {
      final response = await dio.post(
        "https://codingarabic.eraapro.com/login",
        data: {"email": email, "password": password},
      );
      return response.statusCode == 200;
    } catch (e) {
      return false;
    }
  }
}
