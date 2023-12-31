// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$LoginState on AbstractLoginState, Store {
  Computed<String>? _$userNameComputed;

  @override
  String get userName =>
      (_$userNameComputed ??= Computed<String>(() => super.userName,
              name: 'AbstractLoginState.userName'))
          .value;

  late final _$tabIndexAtom =
      Atom(name: 'AbstractLoginState.tabIndex', context: context);

  @override
  int get tabIndex {
    _$tabIndexAtom.reportRead();
    return super.tabIndex;
  }

  @override
  set tabIndex(int value) {
    _$tabIndexAtom.reportWrite(value, super.tabIndex, () {
      super.tabIndex = value;
    });
  }

  late final _$emailAtom =
      Atom(name: 'AbstractLoginState.email', context: context);

  @override
  String get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  late final _$errorAtom =
      Atom(name: 'AbstractLoginState.error', context: context);

  @override
  String? get error {
    _$errorAtom.reportRead();
    return super.error;
  }

  @override
  set error(String? value) {
    _$errorAtom.reportWrite(value, super.error, () {
      super.error = value;
    });
  }

  late final _$passwordAtom =
      Atom(name: 'AbstractLoginState.password', context: context);

  @override
  String get password {
    _$passwordAtom.reportRead();
    return super.password;
  }

  @override
  set password(String value) {
    _$passwordAtom.reportWrite(value, super.password, () {
      super.password = value;
    });
  }

  late final _$isLoadingAtom =
      Atom(name: 'AbstractLoginState.isLoading', context: context);

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  late final _$isNewUserAtom =
      Atom(name: 'AbstractLoginState.isNewUser', context: context);

  @override
  bool get isNewUser {
    _$isNewUserAtom.reportRead();
    return super.isNewUser;
  }

  @override
  set isNewUser(bool value) {
    _$isNewUserAtom.reportWrite(value, super.isNewUser, () {
      super.isNewUser = value;
    });
  }

  late final _$authentiacteAsyncAction =
      AsyncAction('AbstractLoginState.authentiacte', context: context);

  @override
  Future<void> authentiacte(
      {required int index,
      required AppAuthenticationService service,
      required LocalStorage storage}) {
    return _$authentiacteAsyncAction.run(() =>
        super.authentiacte(index: index, service: service, storage: storage));
  }

  late final _$AbstractLoginStateActionController =
      ActionController(name: 'AbstractLoginState', context: context);

  @override
  dynamic setTab(int entry) {
    final _$actionInfo = _$AbstractLoginStateActionController.startAction(
        name: 'AbstractLoginState.setTab');
    try {
      return super.setTab(entry);
    } finally {
      _$AbstractLoginStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setEmail(String? entry) {
    final _$actionInfo = _$AbstractLoginStateActionController.startAction(
        name: 'AbstractLoginState.setEmail');
    try {
      return super.setEmail(entry);
    } finally {
      _$AbstractLoginStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setPassword(String? entry) {
    final _$actionInfo = _$AbstractLoginStateActionController.startAction(
        name: 'AbstractLoginState.setPassword');
    try {
      return super.setPassword(entry);
    } finally {
      _$AbstractLoginStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setLoading(bool entry) {
    final _$actionInfo = _$AbstractLoginStateActionController.startAction(
        name: 'AbstractLoginState.setLoading');
    try {
      return super.setLoading(entry);
    } finally {
      _$AbstractLoginStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
tabIndex: ${tabIndex},
email: ${email},
error: ${error},
password: ${password},
isLoading: ${isLoading},
isNewUser: ${isNewUser},
userName: ${userName}
    ''';
  }
}
