import 'dart:convert';

import 'dart:async';
import 'package:http/http.dart' as http;

class BlackRockAPIPortfolio {
  String _baseUrl =
      "https://www.blackrock.com/tools/hackathon/portfolio-analysis?";

  Map<String, double> positionsMap;
  List<String> positionsNames;
  bool calculateExposures;
  bool calculatePerformance;
  bool calculateStressTests;
  bool calculateRisk;
  bool calculateExpectedReturns;
  bool onlyMonthEndPerfChart;
  int startDate;

  BlackRockAPIPortfolio(
      {Map<String, double> positions,
      bool calculateExposures,
      bool calculatePerformance,
      bool calculateStressTests,
      bool calculateRisk,
      bool calculateExpectedReturns,
      bool onlyMonthEndPerfChart,
      int startDate}) {
    this.positionsMap = positions;
    this.calculatePerformance = calculatePerformance;
    this.calculateExposures = calculateExposures;
    this.calculateExpectedReturns = calculateExpectedReturns;
    this.calculateRisk = calculateRisk;
    this.calculateStressTests = calculateStressTests;
    this.startDate = startDate;
    this.onlyMonthEndPerfChart = onlyMonthEndPerfChart;
    _buildBaseUrl();
  }

  void _buildBaseUrl() {
    _baseUrl = "https://www.blackrock.com/tools/hackathon/portfolio-analysis?";
    if (calculateExposures != null) {
      _addCalculateExposures(calculateExposures);
    }

    if (calculatePerformance != null) {
      _addCalculatePerformance(calculatePerformance);
    }

    if (calculateStressTests != null) {
      _addCalculateStressTests(calculateStressTests);
    }

    if (calculateRisk != null) {
      _addCalculateRisk(calculateRisk);
    }

    if (calculateExpectedReturns != null) {
      _addCalculateExpectedReturns(calculateExpectedReturns);
    }

    if (onlyMonthEndPerfChart != null) {
      _addOnlyMonthEndPerfChart(onlyMonthEndPerfChart);
    }

    if (startDate != null) {
      _addStartDate(startDate);
    }

    if (positionsMap != null) {
      _baseUrl += _addPositionsParameted(positionsMap);
      this.positionsMap = positionsMap;
    }
  }

  void changePositions(Map<String, double> positions) {
    this.positionsMap = positions;
    _buildBaseUrl();
  }

  //Converts the list of positions to tags working for the api request
  String _addPositionsParameted(Map<String, double> positions) {
    String positionsParameter = "&positions=";
    positionsNames = [];
    for (String position in positions.keys) {
      positionsNames.add(position);
      positionsParameter += "$position~${positions[position]}%7C";
    }
    return positionsParameter;
  }

  void _addCalculateExposures(bool value) {
    _baseUrl += _baseUrl.endsWith("?") ? "" : "&";
    _baseUrl += "calculateExposures=$value";
  }

  void _addCalculatePerformance(bool value) {
    _baseUrl += _baseUrl.endsWith("?") ? "" : "&";
    _baseUrl += "calculatePerformance=$value";
  }

  void _addCalculateStressTests(bool value) {
    _baseUrl += _baseUrl.endsWith("?") ? "" : "&";
    _baseUrl += "calculateStressTests=$value";
  }

  void _addCalculateRisk(bool value) {
    _baseUrl += _baseUrl.endsWith("?") ? "" : "&";
    _baseUrl += "calculateRisk=$value";
  }

  void _addCalculateExpectedReturns(bool value) {
    _baseUrl += _baseUrl.endsWith("?") ? "" : "&";
    _baseUrl += "calculateExpectedReturns=$value";
  }

  void _addOnlyMonthEndPerfChart(bool value) {
    _baseUrl += _baseUrl.endsWith("?") ? "" : "&";
    _baseUrl += "onlyMonthEndPerfChart=$value";
  }

  void _addStartDate(int value) {
    _baseUrl += _baseUrl.endsWith("?") ? "" : "&";
    _baseUrl += "startDate=$value";
  }

  Future<List<dynamic>> _getPortfolios() async {
    _buildBaseUrl();
    var client = http.Client();
    var response = await client.get(_baseUrl);
    var resultMap = await json.decode(response.body)["resultMap"];

    return resultMap["PORTFOLIOS"][0]["portfolios"];
  }

  Future<Map<String, dynamic>> getPortfolio() async {
    List<dynamic> portfolio = await _getPortfolios();
    return portfolio[0];
  }

  Future<Map<String, dynamic>> getReturnsMap() async {
    Map<String, dynamic> portfolio = await getPortfolio();
    return portfolio["returns"]["returnsMap"];
  }

  Future<List<dynamic>> getPerfChart() async {
    Map<String, dynamic> portfolio = await getPortfolio();
    print(_baseUrl);
    return portfolio["returns"]["performanceChart"];
  }

  Map<String, double> getPositionsMap() {
    return positionsMap;
  }
}
