import 'package:fitness_tracker_app/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

const supabaseUrl = 'https://ogfhcubdjlepadxjhudr.supabase.co';
const supabaseKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im9nZmhjdWJkamxlcGFkeGpodWRyIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDk3MTUzNjcsImV4cCI6MjAyNTI5MTM2N30.aaLAqJz6P2qHenQ_GR4m-fSK8nkytjPD8b-GciFa5ZU';
Future<void> main() async {
  await dotenv.load(fileName: ".env");
  await Supabase.initialize(
      url: dotenv.env['SUPABASEURL']!, anonKey: dotenv.env['SUPABASEKEY']!);
// Use `currentSession` to access the session at any time.

  runApp(ProviderScope(child: App()));
}
