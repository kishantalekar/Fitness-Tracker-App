part of 'auth_imports.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Text(
                'Login here',
                style: TextStyle(
                    color: Tcolors.primaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.sp),
              ),
              Text("Welcome back you've been missed")
            ],
          ),
        ),
      ),
    );
  }
}
