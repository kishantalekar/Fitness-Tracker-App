part of 'common_imports.dart';

class Custom_circle_icon extends ConsumerWidget {
  const Custom_circle_icon({
    super.key,
    required this.icon,
  });

  final IconData icon;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CircleAvatar(
      radius: 20.r,
      backgroundColor: Tcolors.primaryColor,
      child: IconButton(
        icon: Icon(
          icon,
          color: Colors.black,
        ),
        onPressed: () {
          ref.watch(authControllerProvider.notifier).logout(context);
        },
      ),
    );
  }
}
