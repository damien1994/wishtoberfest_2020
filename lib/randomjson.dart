import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:dart_random_choice/dart_random_choice.dart';

Future getRandomJson() async {
  String JsonUrl = "https://raw.githubusercontent.com/Amagash/Happy_Hacktoberfest/main/hacktoberfest_jems/data/contributors.json";

  final response = await http.get(JsonUrl);
  final choice =  randomChoice(json.decode(response.body));
  final author = choice['author'];
  final wish = choice['wish'];
  return '$author wishes you $wish';
}