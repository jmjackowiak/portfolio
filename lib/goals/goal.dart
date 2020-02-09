import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

part 'goal.g.dart';

@JsonSerializable()
class Goal {
  Goal(
      {this.name,
      this.description,
      this.startDate,
      this.endDate,
      this.goalPrice,
      this.initialInvestment,
      this.icon,
      this.positions,
      this.positionsInvestment}) {
    fulfilled = initialInvestment / goalPrice;
    if (fulfilled > 1) {
      fulfilled = 1;
    }
    for (int i = 0; i < this.positions.length; i++) {
      positionsToFeedToAPI[positions[i]] = positionsInvestment[i];
    }
  }

  String name;
  int startDate;
  int endDate;
  String description;
  double goalPrice;
  double initialInvestment;
  double fulfilled;
  int icon;
  List<String> positions;
  List<double> positionsInvestment;
  Map<String, double> positionsToFeedToAPI = {};

  factory Goal.fromJson(Map<String, dynamic> json) => _$GoalFromJson(json);

  Map<String, dynamic> toJson() => _$GoalToJson(this);
}
