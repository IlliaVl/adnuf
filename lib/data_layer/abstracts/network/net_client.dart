import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

/// Handles all communication with the backend.
abstract class NetClient {
  /// The HTTP client.
  ///
  /// This is a protected field that can be used when extending the class to
  /// add, for instance, interceptors.
  @protected
  final Dio client;

  /// Creates new [NetClient] with provided [baseUrl].
  NetClient({
    required String baseUrl,
  }) : client = Dio(
          BaseOptions(
            baseUrl: baseUrl,
          ),
        );

  /// Calls request to [path] with the parameters.
  Future<Response> call(
    String path, {
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      final response = await client.get(
        path,
        queryParameters: queryParameters,
      );

      return response;
    } on DioException catch (e) {
      print('Error: ${e.message}');
      rethrow;
    }
  }

  /// Checks if there is internet connection.
  Future<bool> connected() async {
    try {
      final result = await InternetAddress.lookup('example.com');
      return result.isNotEmpty && result[0].rawAddress.isNotEmpty;
    } on SocketException catch (_) {
      return false;
    }
  }
}
