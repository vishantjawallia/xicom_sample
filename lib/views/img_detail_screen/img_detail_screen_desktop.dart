// ignore_for_file: unused_element

part of img_detail_screen_view;

class _ImgDetailScreenDesktop extends StatelessWidget {
  final ImgDetailScreenViewModel viewModel;

  _ImgDetailScreenDesktop(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('ImgDetailScreenDesktop'),
      ),
    );
  }
}
