// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'goal_form_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$GoalFormStore on _GoalFormStore, Store {
  final _$nameAtom = Atom(name: '_GoalFormStore.name');

  @override
  String get name {
    _$nameAtom.context.enforceReadPolicy(_$nameAtom);
    _$nameAtom.reportObserved();
    return super.name;
  }

  @override
  set name(String value) {
    _$nameAtom.context.conditionallyRunInAction(() {
      super.name = value;
      _$nameAtom.reportChanged();
    }, _$nameAtom, name: '${_$nameAtom.name}_set');
  }

  final _$startDateAtom = Atom(name: '_GoalFormStore.startDate');

  @override
  int get startDate {
    _$startDateAtom.context.enforceReadPolicy(_$startDateAtom);
    _$startDateAtom.reportObserved();
    return super.startDate;
  }

  @override
  set startDate(int value) {
    _$startDateAtom.context.conditionallyRunInAction(() {
      super.startDate = value;
      _$startDateAtom.reportChanged();
    }, _$startDateAtom, name: '${_$startDateAtom.name}_set');
  }

  final _$endDateAtom = Atom(name: '_GoalFormStore.endDate');

  @override
  int get endDate {
    _$endDateAtom.context.enforceReadPolicy(_$endDateAtom);
    _$endDateAtom.reportObserved();
    return super.endDate;
  }

  @override
  set endDate(int value) {
    _$endDateAtom.context.conditionallyRunInAction(() {
      super.endDate = value;
      _$endDateAtom.reportChanged();
    }, _$endDateAtom, name: '${_$endDateAtom.name}_set');
  }

  final _$goalPriceAtom = Atom(name: '_GoalFormStore.goalPrice');

  @override
  double get goalPrice {
    _$goalPriceAtom.context.enforceReadPolicy(_$goalPriceAtom);
    _$goalPriceAtom.reportObserved();
    return super.goalPrice;
  }

  @override
  set goalPrice(double value) {
    _$goalPriceAtom.context.conditionallyRunInAction(() {
      super.goalPrice = value;
      _$goalPriceAtom.reportChanged();
    }, _$goalPriceAtom, name: '${_$goalPriceAtom.name}_set');
  }

  final _$initialInvestmentAtom =
      Atom(name: '_GoalFormStore.initialInvestment');

  @override
  double get initialInvestment {
    _$initialInvestmentAtom.context.enforceReadPolicy(_$initialInvestmentAtom);
    _$initialInvestmentAtom.reportObserved();
    return super.initialInvestment;
  }

  @override
  set initialInvestment(double value) {
    _$initialInvestmentAtom.context.conditionallyRunInAction(() {
      super.initialInvestment = value;
      _$initialInvestmentAtom.reportChanged();
    }, _$initialInvestmentAtom, name: '${_$initialInvestmentAtom.name}_set');
  }

  final _$iconAtom = Atom(name: '_GoalFormStore.icon');

  @override
  int get icon {
    _$iconAtom.context.enforceReadPolicy(_$iconAtom);
    _$iconAtom.reportObserved();
    return super.icon;
  }

  @override
  set icon(int value) {
    _$iconAtom.context.conditionallyRunInAction(() {
      super.icon = value;
      _$iconAtom.reportChanged();
    }, _$iconAtom, name: '${_$iconAtom.name}_set');
  }

  final _$positionsAtom = Atom(name: '_GoalFormStore.positions');

  @override
  List<String> get positions {
    _$positionsAtom.context.enforceReadPolicy(_$positionsAtom);
    _$positionsAtom.reportObserved();
    return super.positions;
  }

  @override
  set positions(List<String> value) {
    _$positionsAtom.context.conditionallyRunInAction(() {
      super.positions = value;
      _$positionsAtom.reportChanged();
    }, _$positionsAtom, name: '${_$positionsAtom.name}_set');
  }

  final _$_GoalFormStoreActionController =
      ActionController(name: '_GoalFormStore');

  @override
  void setName(String value) {
    final _$actionInfo = _$_GoalFormStoreActionController.startAction();
    try {
      return super.setName(value);
    } finally {
      _$_GoalFormStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setStartDate(int value) {
    final _$actionInfo = _$_GoalFormStoreActionController.startAction();
    try {
      return super.setStartDate(value);
    } finally {
      _$_GoalFormStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setEndDate(int value) {
    final _$actionInfo = _$_GoalFormStoreActionController.startAction();
    try {
      return super.setEndDate(value);
    } finally {
      _$_GoalFormStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setGoalPrice(double value) {
    final _$actionInfo = _$_GoalFormStoreActionController.startAction();
    try {
      return super.setGoalPrice(value);
    } finally {
      _$_GoalFormStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setInitialInvestment(double value) {
    final _$actionInfo = _$_GoalFormStoreActionController.startAction();
    try {
      return super.setInitialInvestment(value);
    } finally {
      _$_GoalFormStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setIcon(int value) {
    final _$actionInfo = _$_GoalFormStoreActionController.startAction();
    try {
      return super.setIcon(value);
    } finally {
      _$_GoalFormStoreActionController.endAction(_$actionInfo);
    }
  }
}