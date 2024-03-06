// supabase database password : jeksov-Sifnag-hyjzy9

import 'package:fitness_tracker_app/core/core.dart';
import 'package:fitness_tracker_app/core/failure.dart';
import 'package:fitness_tracker_app/core/providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

final authProvider = Provider((ref) {
  final authApi = ref.watch(supabaseAccountProvider);
  return AuthApi(account: authApi);
});

abstract class IAuthApi {
  FutureEither<User> signup(
      {required String email, required String password, required String name});

  FutureEither<Session> login(
      {required String email, required String password});

  FutureEitherVoid logout();
}

class AuthApi extends IAuthApi {
  final GoTrueClient _account;

  AuthApi({required GoTrueClient account}) : _account = account;

  Future<User?> currentUser() async {
    try {
      return await _account.currentUser ?? null;
    } catch (e) {
      return null;
    }
  }

  @override
  FutureEither<Session> login({
    required String email,
    required String password,
  }) async {
    try {
      final res =
          await _account.signInWithPassword(password: password, email: email);

      if (res.session == null)
        return left(Failure("No session found", "No session found"));

      return right(res.session!);
    } on AuthException catch (e, st) {
      return left(Failure(e.message, st.toString()));
    } catch (e, st) {
      return left(Failure(e.toString(), st.toString()));
    }
  }

  @override
  FutureEitherVoid logout() async {
    try {
      await _account.signOut();
      return right(null);
    } on AuthException catch (e, st) {
      return left(Failure(e.message, st.toString()));
    } catch (e, st) {
      return left(Failure(e.toString(), st.toString()));
    }
  }

  @override
  FutureEither<User> signup({
    required String email,
    required String password,
    required String name,
  }) async {
    try {
      final res = await _account.signUp(password: password, email: email);
      print(res);
      if (res.session == null)
        return left(Failure("No session found", "No session found"));

      return right(res.session!.user);
    } on AuthException catch (e, st) {
      return left(Failure(e.message, st.toString()));
    } catch (e, st) {
      return left(Failure(e.toString(), st.toString()));
    }
  }
}
