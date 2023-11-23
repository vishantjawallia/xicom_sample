// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, null_check_always_fails

part of img_detail_screen_view;

// ignore: must_be_immutable
class _ImgDetailScreenMobile extends StatefulWidget {
  final ImgDetailScreenViewModel viewModel;

  _ImgDetailScreenMobile(this.viewModel);

  @override
  State<_ImgDetailScreenMobile> createState() => _ImgDetailScreenMobileState();
}

class _ImgDetailScreenMobileState extends State<_ImgDetailScreenMobile> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(),
        title: Text(
          'Detail Screen',
          style:
              Get.textTheme.displaySmall!.copyWith(fontWeight: FontWeight.w600),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 22),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    if (widget.viewModel.file == null)
                      InkWell(
                        onTap: widget.viewModel.onImageChange,
                        child: Material(
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.grey.shade100,
                                borderRadius: BorderRadius.circular(8)),
                            height: 280,
                            width: double.infinity,
                            child: Icon(
                              Icons.add_a_photo_rounded,
                              size: 80,
                              color: Colors.grey.shade400,
                            ),
                          ),
                        ),
                      )
                    else if (true == 0)
                      SizedBox()
                    else
                      CachedNetworkImage(
                        height: 280,
                        imageUrl:
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
                    SizedBox(height: 20),
                    CustomTextField(
                      controller: widget.viewModel.fnameController,
                      // focusNode: widget.viewModel.fnameFocusedNode,
                      name: "First Name",
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter First Name';
                        }

                        return null!;
                      },
                    ),
                    CustomTextField(
                      controller: widget.viewModel.lnameController,
                      // focusNode: widget.viewModel.lnameFocusedNode,
                      name: "Last Name",
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter Last Name';
                        }
                        return null!;
                      },
                    ),
                    CustomTextField(
                      controller: widget.viewModel.emailController,
                      // focusNode: widget.viewModel.emailFocusedNode,
                      name: "Email",
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter Email';
                        }

                        return null!;
                      },
                    ),
                    CustomTextField(
                      controller: widget.viewModel.phoneController,
                      // focusNode: widget.viewModel.phoneFocusedNode,
                      name: "Phone",
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter Phone';
                        }
                        return null!;
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: CustomButton(
                          height: 26,
                          width: 140,
                          backgroundColor: Palettes.textColor,
                          borderColor: Palettes.textColor,
                          borderRadius: BorderRadius.circular(8),
                          textColor: Palettes.white,
                          text: "Submit",
                          onTap: () {
                            if (_formKey.currentState!.validate()) {
                              // If the form is valid, display a snackbar. In the real world,
                              // you'd often call a server or save the information in a database.
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                    content: Text('Processing Data')),
                              );
                            } else {
                              widget.viewModel.addData();
                            }
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
