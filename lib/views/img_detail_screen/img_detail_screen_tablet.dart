part of img_detail_screen_view;

// ignore: must_be_immutable
class _ImgDetailScreenTablet extends StatelessWidget {
  final ImgDetailScreenViewModel viewModel;

  _ImgDetailScreenTablet(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('ImgDetailScreenTablet')),
    );
  }
}