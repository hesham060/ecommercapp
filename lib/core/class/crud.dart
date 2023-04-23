import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:ecommercapp/core/class/statusrequest.dart';

import '../fuctions/checkinternet.dart';
import 'package:http/http.dart' as http;

class Crud {
  Future<Either<StatusRequest, Map>> postData(String linkurl, Map data) async {
    try {
      if (await checkInternet()) {
        var response = await http.post(Uri.parse(linkurl), body: data);
        print(response.statusCode);

        if (response.statusCode == 200 || response.statusCode == 201) {
          Map responsebody = jsonDecode(response.body);
          print(responsebody);
          return Right(responsebody);
        } else {
          print("wrong server response: ");

          return const Left(StatusRequest.serverFailure);
        }
        
      } else {
        print("no connection");
        return const Left(StatusRequest.offLineFailure);
      }
    } catch (_) {
      return const Left(StatusRequest.serverException);
    }
  }
}
