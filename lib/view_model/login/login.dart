import 'package:mobx/mobx.dart';
import 'package:portfolio/core/data/local_storage.dart';
import 'package:portfolio/core/service/auth.dart';
part 'login.g.dart';

class LoginState = AbstractLoginState with _$LoginState;

abstract class AbstractLoginState with Store {
  @observable
  int tabIndex = 0;
  @observable
  String email = '';
  @observable
  String? error;

  @observable
  String password = '';

  @observable
  bool isLoading = false;

  @observable
  bool isNewUser = false;

  @action
  setTab(int entry) => tabIndex = entry;
  @action
  setEmail(String? entry) => email = entry ?? '';
  @action
  setPassword(String? entry) => password = entry ?? "";
  @action
  setLoading(bool entry) => isLoading = entry;

  @action
  Future<void> authentiacte(
      {required int index,
      required AppAuthenticationService service,
      required LocalStorage storage}) async {
    setLoading(true);
    switch (index) {
      case 0:
        final req = await service.login(email: email, password: password);
        error = req;
        break;
      case 1:
        final req = await service.signUp(email: email, password: password);
        error = req;
        break;
    }
    storage.addUser(email);
    setLoading(false);
  }

  @computed
  String get userName =>
      '${email.split('@').first.replaceAll(RegExp('(d+)').toString(), '')}-hr';
}
