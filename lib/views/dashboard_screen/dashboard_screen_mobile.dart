// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_unnecessary_containers, sized_box_for_whitespace, must_be_immutable

part of dashboard_screen_view;

class _DashboardScreenMobile extends StatefulWidget {
  final DashboardScreenViewModel viewModel;

  const _DashboardScreenMobile(this.viewModel);

  @override
  State<_DashboardScreenMobile> createState() => _DashboardScreenMobileState();
}

class _DashboardScreenMobileState extends State<_DashboardScreenMobile> with TickerProviderStateMixin {
  late TabController? tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: widget.viewModel.quotesList.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context, widget.viewModel),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          children: [
          ],
        ),
      ),
    );
  }
}
