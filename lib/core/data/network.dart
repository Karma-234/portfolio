import 'dart:async';
import 'dart:convert';

import 'package:chopper/chopper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

final converters = {};

class SerializableConverter extends JsonConverter {
  @override
  FutureOr<Response<BodyType>> convertResponse<BodyType, InnerType>(
    Response response,
  ) async {
    var jsonRes = await super.convertResponse(response);
    final converter = converters[BodyType];
    return jsonRes.copyWith<BodyType>(
      body: converter != null ? converter(jsonRes.body) : jsonRes.body,
    );
  }

  @override
  FutureOr<Response> convertError<BodyType, InnerType>(Response response) {
    final converter = converters[BodyType];
    try {
      var jsonRes = jsonDecode(response.body);
      final r = response.copyWith<BodyType>(
          body: converter != null ? converter(jsonRes) : response.body);
      return r;
    } catch (e, st) {
      debugPrintStack(stackTrace: st);
      final map = {
        'responseMessage':
            "${response.body['responseMessage'] ?? 'An Unknwon error occured, please try again later.'}",
        'status': "failure"
      };
      return response.copyWith<BodyType>(
          body: converter != null ? converter(map) : response.body);
    }
  }
}

class SerializableErrorConverter implements ErrorConverter {
  @override
  FutureOr<Response> convertError<BodyType, InnerType>(Response response) {
    final converter = converters[BodyType];
    try {
      var jsonRes = jsonDecode(response.body);
      final r = response.copyWith<BodyType>(
          body: converter != null ? converter(jsonRes) : response.body);
      return r;
    } catch (e, st) {
      debugPrintStack(stackTrace: st);
      final map = {
        'responseMessage':
            "${response.body['responseMessage'] ?? 'An Unknwon error occured, please try again later.'}",
        'status': "failure"
      };
      return response.copyWith<BodyType>(
          body: converter != null ? converter(map) : response.body);
    }
  }
}

class NetworkClient extends ChopperClient {
  NetworkClient()
      : super(
            baseUrl: Uri.parse(_baseUrl),
            converter: SerializableConverter(),
            errorConverter: SerializableErrorConverter(),
            services: <ChopperService>[],
            interceptors: [
              (Request request) async {
                final headers = request.headers;
                headers.addAll(
                  {"Authorization": 'Bearer ${dotenv.env['PERSONAL_TOKEN']}'},
                );
                return request.copyWith(headers: headers);
              },
              HttpLoggingInterceptor(),
            ]);
}

const _baseUrl = 'https://api.github.com';
