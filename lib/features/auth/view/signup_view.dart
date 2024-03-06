// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'auth_imports.dart';

class SignupView extends ConsumerWidget {
  SignupView({super.key});
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  static route() => MaterialPageRoute(builder: (_) => SignupView());

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    void signUp() {
      ref.read(authControllerProvider.notifier).signup(
          email: emailController.text,
          password: passwordController.text,
          name: emailController.text,
          context: context);
    }

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                Gap(40.h),
                Text(
                  'Create Account',
                  style: TextStyle(
                    color: Tcolors.primaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 24.sp,
                  ),
                ),
                Gap(10.h),
                Text(
                  "Create an account as you can explore",
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: Tcolors.grey,
                  ),
                ),
                Text(
                  "all the features of the app",
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: Tcolors.grey,
                  ),
                ),
                Gap(20.h),
                AuthField(
                  hintText: "Name",
                  controller: emailController,
                ),
                Gap(20.h),
                AuthField(
                  hintText: "Email",
                  controller: emailController,
                ),
                Gap(30.h),
                AuthField(
                  hintText: "Password",
                  controller: passwordController,
                ),
                Gap(30),
                RoundedLargeButton(
                  buttonText: "Sign up",
                  onTap: signUp,
                ),
                Gap(20),
                TextButton(
                  onPressed: () {},
                  style: ButtonStyle().copyWith(),
                  child: GestureDetector(
                    onTap: () => Navigator.of(context).push(LoginView.route()),
                    child: Text(
                      "Already have an account",
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
