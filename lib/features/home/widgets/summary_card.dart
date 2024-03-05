part of 'widgets_imports.dart';

class SummaryCard extends StatelessWidget {
  const SummaryCard({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
  });

  final String image;
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.w,
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Tcolors.secondaryColor,
      ),
      child: Column(
        children: [
          Image.asset(
            image,
            fit: BoxFit.cover,
          ),
          const Gap(1),
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.sp),
          ),
          Text(
            subTitle,
            style: const TextStyle(
                color: Tcolors.darkerGrey, fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}
