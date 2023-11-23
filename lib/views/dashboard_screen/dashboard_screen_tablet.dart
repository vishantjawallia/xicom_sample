// ignore_for_file: unused_element

part of dashboard_screen_view;

class _DashboardScreenTablet extends StatelessWidget {
  final DashboardScreenViewModel viewModel;

  const _DashboardScreenTablet(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('DashboardScreenTablet')),
    );
  }
}
