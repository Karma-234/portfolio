// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repositories.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$RepositoriesState on AbstractRepositoriesState, Store {
  Computed<List<RepositoryResponse>>? _$pubReposComputed;

  @override
  List<RepositoryResponse> get pubRepos => (_$pubReposComputed ??=
          Computed<List<RepositoryResponse>>(() => super.pubRepos,
              name: 'AbstractRepositoriesState.pubRepos'))
      .value;

  late final _$isLoadingAtom =
      Atom(name: 'AbstractRepositoriesState.isLoading', context: context);

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

  late final _$respAtom =
      Atom(name: 'AbstractRepositoriesState.resp', context: context);

  @override
  List<RepositoryResponse> get resp {
    _$respAtom.reportRead();
    return super.resp;
  }

  @override
  set resp(List<RepositoryResponse> value) {
    _$respAtom.reportWrite(value, super.resp, () {
      super.resp = value;
    });
  }

  late final _$errAtom =
      Atom(name: 'AbstractRepositoriesState.err', context: context);

  @override
  String? get err {
    _$errAtom.reportRead();
    return super.err;
  }

  @override
  set err(String? value) {
    _$errAtom.reportWrite(value, super.err, () {
      super.err = value;
    });
  }

  late final _$getRepositoryAsyncAction =
      AsyncAction('AbstractRepositoriesState.getRepository', context: context);

  @override
  Future<void> getRepository() {
    return _$getRepositoryAsyncAction.run(() => super.getRepository());
  }

  late final _$AbstractRepositoriesStateActionController =
      ActionController(name: 'AbstractRepositoriesState', context: context);

  @override
  dynamic toggleLoading() {
    final _$actionInfo = _$AbstractRepositoriesStateActionController
        .startAction(name: 'AbstractRepositoriesState.toggleLoading');
    try {
      return super.toggleLoading();
    } finally {
      _$AbstractRepositoriesStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading},
resp: ${resp},
err: ${err},
pubRepos: ${pubRepos}
    ''';
  }
}
