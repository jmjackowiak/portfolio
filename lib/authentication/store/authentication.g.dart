// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authentication.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AuthenticationStore on _AuthenticationStore, Store {
  Computed<bool> _$canLoginComputed;

  @override
  bool get canLogin =>
      (_$canLoginComputed ??= Computed<bool>(() => super.canLogin)).value;

  final _$statusAtom = Atom(name: '_AuthenticationStore.status');

  @override
  AuthStatus get status {
    _$statusAtom.context.enforceReadPolicy(_$statusAtom);
    _$statusAtom.reportObserved();
    return super.status;
  }

  @override
  set status(AuthStatus value) {
    _$statusAtom.context.conditionallyRunInAction(() {
      super.status = value;
      _$statusAtom.reportChanged();
    }, _$statusAtom, name: '${_$statusAtom.name}_set');
  }

  final _$isRegistrationFormAtom =
      Atom(name: '_AuthenticationStore.isRegistrationForm');

  @override
  bool get isRegistrationForm {
    _$isRegistrationFormAtom.context
        .enforceReadPolicy(_$isRegistrationFormAtom);
    _$isRegistrationFormAtom.reportObserved();
    return super.isRegistrationForm;
  }

  @override
  set isRegistrationForm(bool value) {
    _$isRegistrationFormAtom.context.conditionallyRunInAction(() {
      super.isRegistrationForm = value;
      _$isRegistrationFormAtom.reportChanged();
    }, _$isRegistrationFormAtom, name: '${_$isRegistrationFormAtom.name}_set');
  }

  final _$emailAtom = Atom(name: '_AuthenticationStore.email');

  @override
  String get email {
    _$emailAtom.context.enforceReadPolicy(_$emailAtom);
    _$emailAtom.reportObserved();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.context.conditionallyRunInAction(() {
      super.email = value;
      _$emailAtom.reportChanged();
    }, _$emailAtom, name: '${_$emailAtom.name}_set');
  }

  final _$passwordAtom = Atom(name: '_AuthenticationStore.password');

  @override
  String get password {
    _$passwordAtom.context.enforceReadPolicy(_$passwordAtom);
    _$passwordAtom.reportObserved();
    return super.password;
  }

  @override
  set password(String value) {
    _$passwordAtom.context.conditionallyRunInAction(() {
      super.password = value;
      _$passwordAtom.reportChanged();
    }, _$passwordAtom, name: '${_$passwordAtom.name}_set');
  }

  final _$passwordRepeatAtom =
      Atom(name: '_AuthenticationStore.passwordRepeat');

  @override
  String get passwordRepeat {
    _$passwordRepeatAtom.context.enforceReadPolicy(_$passwordRepeatAtom);
    _$passwordRepeatAtom.reportObserved();
    return super.passwordRepeat;
  }

  @override
  set passwordRepeat(String value) {
    _$passwordRepeatAtom.context.conditionallyRunInAction(() {
      super.passwordRepeat = value;
      _$passwordRepeatAtom.reportChanged();
    }, _$passwordRepeatAtom, name: '${_$passwordRepeatAtom.name}_set');
  }

  final _$isUserCheckPendingAtom =
      Atom(name: '_AuthenticationStore.isUserCheckPending');

  @override
  bool get isUserCheckPending {
    _$isUserCheckPendingAtom.context
        .enforceReadPolicy(_$isUserCheckPendingAtom);
    _$isUserCheckPendingAtom.reportObserved();
    return super.isUserCheckPending;
  }

  @override
  set isUserCheckPending(bool value) {
    _$isUserCheckPendingAtom.context.conditionallyRunInAction(() {
      super.isUserCheckPending = value;
      _$isUserCheckPendingAtom.reportChanged();
    }, _$isUserCheckPendingAtom, name: '${_$isUserCheckPendingAtom.name}_set');
  }

  final _$validateAndSubmitAsyncAction = AsyncAction('validateAndSubmit');

  @override
  Future<void> validateAndSubmit() {
    return _$validateAndSubmitAsyncAction.run(() => super.validateAndSubmit());
  }

  final _$signInWithCredentialsAsyncAction =
      AsyncAction('signInWithCredentials');

  @override
  Future<void> signInWithCredentials() {
    return _$signInWithCredentialsAsyncAction
        .run(() => super.signInWithCredentials());
  }

  final _$signUpAsyncAction = AsyncAction('signUp');

  @override
  Future<void> signUp() {
    return _$signUpAsyncAction.run(() => super.signUp());
  }

  final _$signInWithGoogleAsyncAction = AsyncAction('signInWithGoogle');

  @override
  Future<void> signInWithGoogle() {
    return _$signInWithGoogleAsyncAction.run(() => super.signInWithGoogle());
  }

  final _$determineStatusAsyncAction = AsyncAction('determineStatus');

  @override
  Future<void> determineStatus() {
    return _$determineStatusAsyncAction.run(() => super.determineStatus());
  }

  final _$_AuthenticationStoreActionController =
      ActionController(name: '_AuthenticationStore');

  @override
  void validateEmail(String value) {
    final _$actionInfo = _$_AuthenticationStoreActionController.startAction();
    try {
      return super.validateEmail(value);
    } finally {
      _$_AuthenticationStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void validatePassword(String value) {
    final _$actionInfo = _$_AuthenticationStoreActionController.startAction();
    try {
      return super.validatePassword(value);
    } finally {
      _$_AuthenticationStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void validatePasswordRepeat(String value) {
    final _$actionInfo = _$_AuthenticationStoreActionController.startAction();
    try {
      return super.validatePasswordRepeat(value);
    } finally {
      _$_AuthenticationStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeForm() {
    final _$actionInfo = _$_AuthenticationStoreActionController.startAction();
    try {
      return super.changeForm();
    } finally {
      _$_AuthenticationStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void signOut() {
    final _$actionInfo = _$_AuthenticationStoreActionController.startAction();
    try {
      return super.signOut();
    } finally {
      _$_AuthenticationStoreActionController.endAction(_$actionInfo);
    }
  }
}
