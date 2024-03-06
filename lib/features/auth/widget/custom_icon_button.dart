part of 'widget_imports.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    super.key,
    required this.icon,
  });
  final FaIcon icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 10.w),
        child: IconButton(
          style: ButtonStyle().copyWith(
              shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10))),
              backgroundColor: MaterialStatePropertyAll(Tcolors.darkGrey)),
          onPressed: () {},
          icon: icon,
        ));
  }
}
