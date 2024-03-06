// ignore_for_file: public_member_api_docs, sort_constructors_first

part of 'common_imports.dart';

class RoundedLargeButton extends StatelessWidget {
  const RoundedLargeButton({
    super.key,
    required this.buttonText,
    required this.onTap,
  });
  final String buttonText;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(vertical: 14.h),
            enableFeedback: true,
            backgroundColor: Tcolors.primaryColor.withOpacity(0.8),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12))),
        onPressed: onTap,
        child: Text(
          buttonText,
          style: TextStyle(
              color: Tcolors.secondaryColor,
              fontWeight: FontWeight.bold,
              fontSize: 16.sp),
        ),
      ),
    );
  }
}
