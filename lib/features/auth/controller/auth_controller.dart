import 'package:fitness_tracker_app/apis/auth_api.dart';
import 'package:fitness_tracker_app/features/auth/view/Auth.dart';
import 'package:fitness_tracker_app/features/home/view/home_imports.dart';
import 'package:fitness_tracker_app/utils/utils.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

final authControllerProvider =
    StateNotifierProvider<AuthController, bool>((ref) {
  final authApi = ref.watch(authProvider);
  return AuthController(authApi: authApi);
});
final currentUserProvider = FutureProvider((ref) async {
  return ref.watch(authControllerProvider.notifier).currentUser();
});

class AuthController extends StateNotifier<bool> {
  final AuthApi _authApi;

  AuthController({
    required AuthApi authApi,
  })  : _authApi = authApi,
        super(false);

  Future<User?> currentUser() {
    return _authApi.currentUser();
  }

  void signup(
      {required String email,
      required String password,
      required String name,
      required BuildContext context}) async {
    final res =
        await _authApi.signup(email: email, password: password, name: name);

    res.fold(
      (l) => showSnackBar(context, l.message),
      (r) => Navigator.of(context).push(LoginView.route()),
    );
  }

  void login({
    required String email,
    required String password,
    required BuildContext context,
  }) async {
    final res = await _authApi.login(email: email, password: password);

    res.fold((l) => showSnackBar(context, l.message), (r) {
      Navigator.of(context).push(HomeScreen.route());
    });
  }

  void logout(BuildContext context) async {
    final res = await _authApi.logout();

    res.fold((l) => showSnackBar(context, l.message), (r) {
      print("Logout successfull");
      Navigator.of(context).push(LoginView.route());
    });
  }
}
