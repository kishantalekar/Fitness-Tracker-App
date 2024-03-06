// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'auth_imports.dart';

class LoginView extends ConsumerStatefulWidget {
  const LoginView({super.key});
  static route() => MaterialPageRoute(builder: (_) => LoginView());

  @override
  ConsumerState<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends ConsumerState<LoginView> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void signIn() {
    ref.read(authControllerProvider.notifier).login(
        email: emailController.text,
        password: passwordController.text,
        context: context);
  }

  @override
  Widget build(BuildContext context) {
    final isLoading = ref.watch(authControllerProvider);
    return isLoading
        ? const LoadingPage()
        : Scaffold(
            body: Padding(
              padding: const EdgeInsets.all(15.0),
              child: SafeArea(
                child: Center(
                  child: Column(
                    children: [
                      Gap(40.h),
                      Text(
                        'Login here',
                        style: TextStyle(
                          color: Tcolors.primaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 24.sp,
                        ),
                      ),
                      Gap(10.h),
                      Text(
                        "Welcome back you've",
                        style: TextStyle(
                          fontSize: 14.sp,
                          color: Tcolors.grey,
                        ),
                      ),
                      Text(
                        "been missed",
                        style: TextStyle(
                          fontSize: 14.sp,
                          color: Tcolors.grey,
                        ),
                      ),
                      Gap(10.h),
                      AuthField(
                        hintText: "Email",
                        controller: emailController,
                      ),
                      Gap(20.h),
                      AuthField(
                        hintText: "Password",
                        controller: passwordController,
                      ),
                      Gap(20),
                      SizedBox(
                        width: double.infinity,
                        child: Text(
                          "Forgot your password?",
                          textAlign: TextAlign.end,
                          style: TextStyle(color: Tcolors.primaryColor),
                        ),
                      ),
                      Gap(20),
                      RoundedLargeButton(
                        buttonText: 'Sign up',
                        onTap: signIn,
                      ),
                      Gap(20),
                      TextButton(
                        onPressed: () {},
                        style: ButtonStyle().copyWith(),
                        child: GestureDetector(
                          onTap: () =>
                              Navigator.of(context).push(SignupView.route()),
                          child: Text(
                            "Create a new account",
                            style: TextStyle(color: Tcolors.grey),
                          ),
                        ),
                      ),
                      Gap(40.h),
                      Text(
                        'or continue with ',
                        style: TextStyle(
                            color: Tcolors.primaryColor,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500),
                      ),
                      Gap(10.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: authIcons,
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
  }
}
