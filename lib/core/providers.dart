import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

final supabaseClientProvider = Provider((ref) => Supabase.instance.client);

final supabaseAccountProvider = Provider((ref) {
  final account = ref.watch(supabaseClientProvider).auth;
  return account;
});
