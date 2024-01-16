import 'bloc/iphone_13_14_one_bloc.dart';
import 'models/iphone_13_14_one_model.dart';
import 'package:asmi_s_application1/core/app_export.dart';
import 'package:asmi_s_application1/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class Iphone1314OneScreen extends StatelessWidget {
  const Iphone1314OneScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<Iphone1314OneBloc>(
        create: (context) => Iphone1314OneBloc(
            Iphone1314OneState(iphone1314OneModelObj: Iphone1314OneModel()))
          ..add(Iphone1314OneInitialEvent()),
        child: Iphone1314OneScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<Iphone1314OneBloc, Iphone1314OneState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: SizedBox(
                  width: double.maxFinite,
                  child: Column(children: [
                    _buildStackSection(context),
                    SizedBox(height: 28.v),
                    GestureDetector(
                        onTap: () {
                          onTapTxtEmbraceSustainability(context);
                        },
                        child: Text("msg_embrace_sustainability".tr,
                            style: theme.textTheme.headlineLarge)),
                    SizedBox(height: 32.v),
                    Container(
                        width: 334.h,
                        margin: EdgeInsets.only(left: 30.h, right: 25.h),
                        child: Text("msg_welcome_to_our_app".tr,
                            maxLines: 7,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.headlineMedium)),
                    SizedBox(height: 5.v)
                  ])),
              bottomNavigationBar: _buildRowSection(context)));
    });
  }

  /// Section Widget
  Widget _buildStackSection(BuildContext context) {
    return SizedBox(
        height: 359.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.topLeft, children: [
          CustomImageView(
              imagePath: ImageConstant.imgImg11,
              height: 331.v,
              width: 318.h,
              alignment: Alignment.bottomLeft,
              margin: EdgeInsets.only(left: 20.h)),
          Align(
              alignment: Alignment.topLeft,
              child: Container(
                  margin: EdgeInsets.only(right: 240.h),
                  padding:
                      EdgeInsets.symmetric(horizontal: 29.h, vertical: 34.v),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(ImageConstant.imgGroup3),
                          fit: BoxFit.cover)),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 85.v),
                        Container(
                            height: 27.v,
                            width: 28.h,
                            decoration: BoxDecoration(
                                color: appTheme.lightGreen300,
                                borderRadius: BorderRadius.circular(14.h),
                                border: Border.all(
                                    color: appTheme.lightGreenA700,
                                    width: 1.h)))
                      ]))),
          CustomImageView(
              imagePath: ImageConstant.imgLine1,
              height: 236.v,
              width: 150.h,
              alignment: Alignment.topRight),
          CustomImageView(
              imagePath: ImageConstant.imgLine2,
              height: 119.v,
              width: 158.h,
              alignment: Alignment.topRight),
          Align(
              alignment: Alignment.bottomRight,
              child: Container(
                  height: 31.v,
                  width: 30.h,
                  margin: EdgeInsets.only(right: 36.h, bottom: 46.v),
                  decoration: BoxDecoration(
                      color: appTheme.lightGreen300,
                      borderRadius: BorderRadius.circular(15.h),
                      border: Border.all(
                          color: appTheme.lightGreenA700, width: 1.h))))
        ]));
  }

  /// Section Widget
  Widget _buildRowSection(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 20.h, right: 15.h, bottom: 18.v),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(top: 3.v, bottom: 5.v),
                  child: Text("lbl_skip".tr,
                      style: theme.textTheme.headlineSmall)),
              CustomIconButton(
                  height: 42.v,
                  width: 36.h,
                  padding: EdgeInsets.all(13.h),
                  child:
                      CustomImageView(imagePath: ImageConstant.imgArrowRight))
            ]));
  }

  /// Navigates to the iphone1314TwoScreen when the action is triggered.
  onTapTxtEmbraceSustainability(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.iphone1314TwoScreen,
    );
  }
}
