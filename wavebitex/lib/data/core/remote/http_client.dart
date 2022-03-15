import 'package:dio/dio.dart';
import 'package:wavebitex/data/core/failure/failure.dart';
import 'package:wavebitex/data/core/remote/endpoints.dart';

class HttpClient {
  static const String baseUrl = Endpoints.baseUrl;
  static BaseOptions opts = BaseOptions(
    baseUrl: baseUrl,
    responseType: ResponseType.json,
    connectTimeout: 30000,
    receiveTimeout: 30000,
    contentType: 'application/json',
  );

  static Dio createDio() {
    return Dio(opts);
  }

  // static Dio addInterceptors(Dio dio) {
  //   return dio
  //     ..interceptors.add(
  //       InterceptorsWrapper(
  //           onRequest: (RequestOptions options) => requestInterceptor(options),
  //           onError: (DioError e) async {
  //             return e.response.data;
  //           }),
  //     );
  // }

  // static dynamic requestInterceptor(RequestOptions options) async {
  //   // Get your JWT token
  //   const token = '';
  //   options.headers.addAll({"Authorization": "Bearer: $token"});
  //   return options;
  // }

  static final dio = createDio();
  // static final baseAPI = addInterceptors(dio);

  Future<Response?> get(String url) async {
    print('get url =====> $url');
    try {
      Response response = await dio.get(url);
      return response;
    } on DioError catch (e) {
      print('get Dio error ====> --$e');
      return null;
    }
  }

  Future<Response?> post(String url, dynamic data) async {
    print('post url =====> $url');
    try {
      Response response = await dio.post(url, data: data);
      print("Response $response");

      return response;
    } on DioError catch (e) {
      if (e.response != null) {
        throw Failure(e.response?.data['message']);
      } else {
        throw Failure('Something went wrong, please try again later');
      }
    }
  }

  Future<Response?> patch(String url, dynamic data) async {
    print('patch url =====> $url');
    try {
      Response response = await dio.patch(url, data: data);
      return response;
    } on DioError catch (e) {
      print('patch Dio error ====> $e');
      return null;
    }
  }

  Future<Response?> delete(String url) async {
    print('delete url =====> $url');
    try {
      Response response = await dio.delete(url);
      return response;
    } on DioError catch (e) {
      print('delete Dio error ====> --$e');
    }
  }
}
