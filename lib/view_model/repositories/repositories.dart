import 'package:mobx/mobx.dart';

part 'repositories.g.dart';

class RepositoriesState = AbstractRepositoriesState with _$RepositoriesState;

abstract class AbstractRepositoriesState with Store {
  @observable
  bool isLoading = false;
  @action
  toggleLoading() => isLoading = !isLoading;
}
