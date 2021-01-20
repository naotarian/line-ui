import 'package:hooks_riverpod/all.dart';
import 'package:state_notifier/state_notifier.dart';
import '../client/auth.dart';
import '../entity/auth.dart';

final signUpStateProvider = StateNotifierProvider((_) => SignUpStateProvider());

class SignUpStateProvider extends StateNotifier<SignUpState> {
  SignUpStateProvider() : super(SignUpState());

  Reader read;

  void initState(reader) {
    read = reader;
  }

  Future signUp(password, mail) async {
    await read(authProvider).signUp(password, mail);
  }

  setMailText(text) {
    state = state.copyWith(email: text);
  }

  setPasswordText(text) {
    state = state.copyWith(password: text);
  }
}
