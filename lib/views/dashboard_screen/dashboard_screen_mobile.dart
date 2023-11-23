// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_unnecessary_containers, sized_box_for_whitespace, must_be_immutable

part of dashboard_screen_view;

class _DashboardScreenMobile extends StatelessWidget {
  final DashboardScreenViewModel viewModel;

  const _DashboardScreenMobile(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context, viewModel),
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: viewModel.imgListing != null
              ? ListView.builder(
                  itemCount: viewModel.imgListing!.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  physics: BouncingScrollPhysics(),
                  padding: EdgeInsets.only(top: 8),
                  itemBuilder: (context, index) {
                    if (viewModel.imgListing!.last.id ==
                        viewModel.imgListing![index].id) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 80, top: 40),
                        child: CustomButton(
                          height: 26,
                          backgroundColor: Palettes.red,
                          borderColor: Palettes.red,
                          borderRadius: BorderRadius.circular(8),
                          textColor: Palettes.white,
                          text: "Click Here to Load Images",
                          onTap: viewModel.loadMoreImage,
                        ),
                      );
                    } else {
                      return InkWell(
                        onTap: () => viewModel
                            .singleImageTap(viewModel.imgListing![index]),
                        child: Container(
                          margin: EdgeInsets.only(top: 16),
                          height: 260,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: CachedNetworkImage(
                              imageUrl: viewModel.imgListing![index].xtImage ??
                                  "http://dev3.xicom.us//xttest//shoes//f8f7420264d9b62582d31da00a6289ea.jpg",
                              placeholder: (context, url) => const Center(
                                child: CircularProgressIndicator(
                                    color: Palettes.primary),
                              ),
                              errorWidget: (context, url, error) =>
                                  const Icon(Icons.error),
                              filterQuality: FilterQuality.low,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      );
                    }
                  },
                )
              : SizedBox(
                  child: Center(
                    child: Text(
                      'No Data Found',
                      style: Get.textTheme.titleLarge!.copyWith(
                        color: Colors.grey.shade800,
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                )),
    );
  }
}
