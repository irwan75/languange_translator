import 'dart:convert';

import 'package:languanges_translator/localization_languange.dart';
import 'package:translator/translator.dart';

class TranslatorUtil {
  final translator = GoogleTranslator();
  //Function to translate sentence
  Future<LocalizationLanguange> textTranslator(
      String countryCode, String localizationLanguage) async {
    Translation translation = await translator.translate(localizationLanguage,
        to: '$countryCode', from: 'en');
    print("translation ${translation.text}");

    Map<String, dynamic> translateResult = jsonDecode(translation.text);

    print("mapping $translateResult");
    LocalizationLanguange languange =
        new LocalizationLanguange.fromMap(translateResult);

    return languange;
  }
}

const String localizationLanguange = '''{
  "PSP1": "Profile",
  "PSP2": "Health Overview",
  "PSP3": "Share",
  "PSP4": "My Age",
  "PSP5": "health score",
  "PSP6": "years old",
  "PSP7": "Expectation",
  "PSP8": "Low Risk",
  "PSP9": "Moderate",
  "PSP10": "High Risk",
  "PSP11": "screening",
  "PSP12": "Risk factors",
  "PSP13": "Update",
  "PSP14": "Body mass index",
  "PSP15": "minutes ago",
  "PSP16": "Class",
  "PSP17": "Obesity",
  "PSP18": "Lives in",
  "PSP19": "Has diabetes type",
  "PSP20": "drink per week",
  "PSP21": "Weight",
  "PSP22": "Height",
  "PSP23": "Classification",
  "PSP24":
      "Find out your risk, before it's too late. Download Centafit now http://onelink.to/77qkau."
      }''';
