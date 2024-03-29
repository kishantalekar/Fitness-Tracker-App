part of 'widgets_imports.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Gap(25.h),
              Text(
                "Welcome Back, Jane Doe",
                style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w500),
              ),
              Gap(20.h),
              Text(
                'Summary',
                style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
              ),
              Gap(20.h),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SummaryCard(
                    image: Assets.imagesWalking,
                    title: "10,588",
                    subTitle: "step",
                  ),
                  SummaryCard(
                    image: Assets.imagesCalories,
                    title: "260kcal",
                    subTitle: "calories",
                  ),
                  SummaryCard(
                    image: Assets.imagesHeart,
                    title: "122BPM",
                    subTitle: "Heart Beat",
                  ),
                ],
              ),
              Gap(25.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Your Workouts',
                    style:
                        TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
                  ),
                  const Custom_circle_icon(
                    icon: Icons.add,
                  ),
                ],
              ),
              Gap(20.h),
              ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  separatorBuilder: (context, index) => Gap(15.h),
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return const Custom_listtile(
                      image: Assets.imagesDumbbell,
                      title: "Chest Day",
                      subTitle: "170 kcal",
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
