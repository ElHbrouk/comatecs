import 'dart:convert';

import 'package:comatecs/core/class/statues_request.dart';
import 'package:comatecs/core/functions/check_connectivity.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;

class Crud {
  Future<Either<StatuesRequest, Map>> postData(String url, Map data) async {
    try {
      if (await checkConnectivity()) {
        var response = await http.post(Uri.parse(url), body: data);
        if (response.statusCode == 200 || response.statusCode == 201) {
          Map<String, dynamic> jsonData = jsonDecode(response.body);
          print(response.statusCode);
          print(jsonData);
          return Right(jsonData);
        } else {
          
          print(response);
          return const Left(StatuesRequest.serverFailure);
        }
      } else {
        return const Left(StatuesRequest.connectionFailure);
      }
    } catch (e) {
      return const Left(StatuesRequest.serverExp);
    }
  }
}
