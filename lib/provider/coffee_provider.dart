import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_sample1/constants.dart';
import 'package:riverpod_sample1/models/product_model.dart';

part 'coffee_provider.g.dart';


@riverpod
Future<List<Coffee>> getCoffee(GetCoffeeRef ref) async {
  http.Response response = await http.get(Uri.parse(api));
  List<dynamic> result = (await jsonDecode(response.body))["items"];
  return result.map((e) => Coffee.fromJson(e)).toList();
}