import 'dart:convert';

class LocalizationLanguange {
  //Page Profile
  String profile;
  String healthOverview;
  String share;
  String myAge;
  String healthScore;
  String yearsOld;
  String expectation;
  String lowRisk;
  String moderate;
  String highRisk;
  String screening;
  String riskFactor;
  String update;
  String bodyMassIndex;
  String minutesAgo;
  String classs;
  String obesity;
  String livesIn;
  String hasDiabetes;
  String drinkPerWeek;
  String weight;
  String height;
  String classification;
  String shareScreenshot;
  LocalizationLanguange({
    this.profile,
    this.healthOverview,
    this.share,
    this.myAge,
    this.healthScore,
    this.yearsOld,
    this.expectation,
    this.lowRisk,
    this.moderate,
    this.highRisk,
    this.screening,
    this.riskFactor,
    this.update,
    this.bodyMassIndex,
    this.minutesAgo,
    this.classs,
    this.obesity,
    this.livesIn,
    this.hasDiabetes,
    this.drinkPerWeek,
    this.weight,
    this.height,
    this.classification,
    this.shareScreenshot,
  });

  Map<String, dynamic> toMap() {
    return {
      'profile': profile,
      'healthOverview': healthOverview,
      'share': share,
      'myAge': myAge,
      'healthScore': healthScore,
      'yearsOld': yearsOld,
      'expectation': expectation,
      'lowRisk': lowRisk,
      'moderate': moderate,
      'highRisk': highRisk,
      'screening': screening,
      'riskFactor': riskFactor,
      'update': update,
      'bodyMassIndex': bodyMassIndex,
      'minutesAgo': minutesAgo,
      'classs': classs,
      'obesity': obesity,
      'livesIn': livesIn,
      'hasDiabetes': hasDiabetes,
      'drinkPerWeek': drinkPerWeek,
      'weight': weight,
      'height': height,
      'classification': classification,
      'shareScreenshot': shareScreenshot,
    };
  }

  factory LocalizationLanguange.fromMap(Map<String, dynamic> map) {
    return LocalizationLanguange(
      profile: map['PS1'] ?? "",
      healthOverview: map['PS2'] ?? "",
      share: map['PS3'] ?? "",
      myAge: map['PS4'] ?? "",
      healthScore: map['PS5'] ?? "",
      yearsOld: map['PS6'] ?? "",
      expectation: map['PS7'] ?? "",
      lowRisk: map['PS8'] ?? "",
      moderate: map['PS9'] ?? "",
      highRisk: map['PS10'] ?? "",
      screening: map['PS11'] ?? "",
      riskFactor: map['PS12'] ?? "",
      update: map['PS13'] ?? "",
      bodyMassIndex: map['PS14'] ?? "",
      minutesAgo: map['PS15'] ?? "",
      classs: map['PS16'] ?? "",
      obesity: map['PS17'] ?? "",
      livesIn: map['PS18'] ?? "",
      hasDiabetes: map['PS19'] ?? "",
      drinkPerWeek: map['PS20'] ?? "",
      weight: map['PS21'] ?? "",
      height: map['PS22'] ?? "",
      classification: map['PS23'] ?? "",
      shareScreenshot: map['PS24'] ?? "",
    );
  }

  String toJson() => json.encode(toMap());

  factory LocalizationLanguange.fromJson(String source) =>
      LocalizationLanguange.fromMap(json.decode(source));
}
