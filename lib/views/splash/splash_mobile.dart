part of splash_view;

// ignore: must_be_immutable
class _SplashMobile extends StatelessWidget {
  final SplashViewModel viewModel;

  const _SplashMobile(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Quotes App',
          style: Get.textTheme.displayLarge!.copyWith(fontWeight: FontWeight.w800, fontSize: 40),
        ),
      ),
    );
  }
}
