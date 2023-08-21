import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

final dio = Dio();

configureDIo() async {
  final header = {
    'Authorization': 'Bearer ${dotenv.env['PERSONAL_TOKEN']}',
    'Accept': 'application/vnd.github+json',
    'X-GitHub-Api-Version': '2022-11-28',
  };
  final baseOptions =
      BaseOptions(baseUrl: 'https://api.github.com', headers: header);
  dio.options = baseOptions;
  dio.interceptors.add(LogInterceptor(responseBody: true));
}
