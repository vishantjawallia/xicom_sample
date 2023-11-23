part of img_detail_screen_view;

// ignore: must_be_immutable
class _ImgDetailScreenMobile extends StatelessWidget {
  final ImgDetailScreenViewModel viewModel;

  _ImgDetailScreenMobile(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('ImgDetailScreenMobile'),
      ),
    );
  }
}
