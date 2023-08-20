import 'package:mobx/mobx.dart';
part 'login.g.dart';

class LoginState = AbstractLoginState with _$LoginState;

abstract class AbstractLoginState with Store {
  @observable
  String? email;

  @observable
  String? password;

  @observable
  bool isLoading = false;

  @observable
  bool isNewUser = false;

  @action
  setEmail(String entry) => email = entry;
  @action
  setPassword(String entry) => password = entry;
  @action
  setLoading(bool entry) => isLoading = entry;

  @action
  toggleNewUser() => isNewUser = !isNewUser;
}
