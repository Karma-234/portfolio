import 'package:mobx/mobx.dart';
import 'package:portfolio/core/data/network.dart';
import 'package:portfolio/model/response/repository_response/repository_response.dart';

part 'repositories.g.dart';

class RepositoriesState = AbstractRepositoriesState with _$RepositoriesState;

abstract class AbstractRepositoriesState with Store {
  @observable
  bool isLoading = false;
  @observable
  List<RepositoryResponse> resp = [];
  @observable
  String? err;
  @action
  toggleLoading() => isLoading = !isLoading;

  @action
  Future<void> getRepository() async {
    toggleLoading();
    try {
      final req = await dio.get('/users/karma-234/repos');
      req.statusCode == 200
          ? resp = (req.data as List)
              .map((e) => RepositoryResponse.fromJson(e))
              .toList()
          : err = req.statusMessage;
    } catch (e) {
      err = e.toString();
    }
    toggleLoading();
  }

  @computed
  List<RepositoryResponse> get pubRepos =>
      resp.where((e) => e.private == false).toList();
}
