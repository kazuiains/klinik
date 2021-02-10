import 'package:dio/dio.dart';
import 'package:klinik/core/constants/endpoint.dart';
import 'package:klinik/core/helpers/debug_utils.dart';

enum MethodRequest { POST, PUT, DELETE, GET }

class ApiService {
  static Dio _dio = Dio();

  //ApiService({String Data}) //mewajibkan megisi data berupa string
  ApiService() {
    _dio.options.baseUrl = baseUrl;
    _dio.options.connectTimeout = 90000; //menyambungkan maks 90 detik
    _dio.options.receiveTimeout = 10000; //menerima data maks 10 detik
    // _dio.options.headers = {
    //   'data':'$data'
    // } //ini adalah untuk mengirim headers
  }

  Future<Response> call(
      {MethodRequest method = MethodRequest.POST,
      Map<String, dynamic> request}) async {
    logD("method: $method");
    logD("request: $request");

    var selectedMethod;

    try {
      Response response;
      switch (method) {
        case MethodRequest.GET:
          selectedMethod = method;
          response = await _dio.get("", queryParameters: request);
          break;
        case MethodRequest.PUT:
          selectedMethod = method;
          response = await _dio.put("", data: request);
          break;
        case MethodRequest.DELETE:
          selectedMethod = method;
          response = await _dio.delete("", data: request);
          break;
        default:
          selectedMethod = MethodRequest.POST;
          response = await _dio.post("", data: request);
      }
      logD("success: $selectedMethod, response: ${response.data}");
      return response;
    } on DioError catch (e) {
      logE(
          "method: $selectedMethod, data: ${e.response?.data}"); //${e.response?.data} cek e.response apakah null. kalo tidak maka get data
      if (e.response?.data is Map) {
        (e.response?.data as Map).addAll(<String, dynamic>{
          "success":"0",
          "result": false,
        });
        return e.response;
      } else {
        Response response = Response(data: {
          "success":"0",
          "error": "Terjadi sesuatu, coba ulangi beberapa saat lagi",
          "result": false,
        });
        return response;
      }
    }
  }
}
