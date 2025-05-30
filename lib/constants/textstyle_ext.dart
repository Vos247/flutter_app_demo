import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_app_demo/constants/color_palatte.dart';
import 'package:flutter_app_demo/constants/fontstyle.dart';

class TextStyles {
  TextStyles(this.context);
  BuildContext context;

  double get screenWidth => MediaQuery.of(context).size.width;
  double get screenHeight => MediaQuery.of(context).size.height;

  TextStyle get defaultStyle {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: medium,
      fontSize: 10.sp,
      color: Colors.white,
      fontWeight: FontWeight.w500,
    );
  }

  TextStyle get defaultStyle0 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: bold,
      fontSize: 13.sp,
      color: ColorPalette.primaryColor54,
      fontWeight: FontWeight.w500,
    );
  }

  TextStyle get defaultStyle1 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: bold,
      fontSize: 15.sp,
      color: ColorPalette.primaryColor52,
      fontWeight: FontWeight.w500,
    );
  }

  TextStyle get defaultStyle225 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: regular,
      fontSize: 12.sp,
      color: Colors.black,
      fontWeight: FontWeight.w600,
    );
  }

  TextStyle get defaultStyle226 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: regular,
      fontSize: 12.sp,
      color: Colors.white,
      fontWeight: FontWeight.w600,
    );
  }

  TextStyle get defaultStyle4 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: regularIBMP,
      fontSize: 13.sp,
      color: Colors.black,
      fontWeight: FontWeight.w700,
    );
  }

  TextStyle get defaultStyle227 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: regularIBMP,
      fontSize: 13.sp,
      color: ColorPalette.primaryColor52,
      fontWeight: FontWeight.w700,
    );
  }

  TextStyle get defaultStyle5 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: regular,
      fontSize: 7.sp,
      color: Colors.black,
      fontWeight: FontWeight.w400,
    );
  }

  TextStyle get defaultStyle6 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: regular,
      fontSize: 7.sp,
      color: ColorPalette.primaryColor2,
      fontWeight: FontWeight.w400,
    );
  }

  TextStyle get defaultStyle7 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: bold,
      fontSize: 7.sp,
      color: Colors.black,
      fontWeight: FontWeight.w600,
    );
  }

  TextStyle get defaultStyle8 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: bold,
      fontSize: 10.sp,
      color: ColorPalette.primaryColor52,
      fontWeight: FontWeight.w600,
    );
  }

  TextStyle get defaultStyle9 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: medium,
      fontSize: 8.sp,
      color: ColorPalette.primaryColor3,
      fontWeight: FontWeight.w500,
    );
  }

  TextStyle get defaultStyle10 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: medium,
      fontSize: 12.sp,
      color: ColorPalette.primaryColor52,
      fontWeight: FontWeight.w500,
    );
  }

  TextStyle get defaultStyle11 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: regular,
      fontSize: 10.sp,
      color: ColorPalette.primaryColor4,
      fontWeight: FontWeight.w400,
    );
  }

  TextStyle get defaultStyle12 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: bold,
      fontSize: 10.sp,
      color: Colors.black,
      fontWeight: FontWeight.w600,
    );
  }

  TextStyle get defaultStyle13 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: bold,
      fontSize: 14.sp,
      color: ColorPalette.primaryColor52,
      fontWeight: FontWeight.w600,
    );
  }

  TextStyle get defaultStyle14 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: medium,
      fontSize: 12.sp,
      color: Colors.black,
      fontWeight: FontWeight.w500,
    );
  }

  TextStyle get defaultStyle228 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: medium,
      fontSize: 12.sp,
      color: const Color.fromARGB(255, 91, 86, 86),
      fontWeight: FontWeight.w500,
    );
  }

  TextStyle get defaultStyle15 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: bold,
      fontSize: 16.sp,
      // color: Colors.white,
      color: ColorPalette.primaryColor52,
      fontWeight: FontWeight.w700,
    );
  }

  TextStyle get defaultStyle17 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: bold,
      fontSize: 14.sp,
      color: Colors.black,
      fontWeight: FontWeight.w600,
    );
  }

  TextStyle get defaultStyle18 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: medium,
      fontSize: 20.sp,
      color: Colors.white,
      fontWeight: FontWeight.w500,
    );
  }

  TextStyle get defaultStyle18a {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: medium,
      fontSize: 20.sp,
      color: Colors.black,
      fontWeight: FontWeight.w500,
    );
  }

  TextStyle get defaultStyle19 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: regular,
      fontSize: 12.sp,
      color: Colors.grey.shade600,
      fontWeight: FontWeight.w400,
    );
  }

  TextStyle get defaultStyle20 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: regular,
      fontSize: 10.sp,
      color: ColorPalette.primaryColor2,
      fontWeight: FontWeight.w400,
    );
  }

  TextStyle get defaultStyle21 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: bold,
      fontSize: 10.sp,
      color: Colors.black,
      fontWeight: FontWeight.w600,
    );
  }

  TextStyle get defaultStyle21a {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: bold,
      fontSize: 12.sp,
      color: Colors.black,
      fontWeight: FontWeight.w600,
    );
  }

  TextStyle get defaultStyle22 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: regular,
      fontSize: 8.sp,
      color: ColorPalette.primaryColor52,
      fontWeight: FontWeight.w400,
    );
  }

  TextStyle get defaultStyle23 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: bold,
      fontSize: 16.sp,
      color: Colors.black,
      fontWeight: FontWeight.w600,
    );
  }

  TextStyle get defaultStyle24 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: medium,
      fontSize: 11.sp,
      color: ColorPalette.primaryColor3,
      fontWeight: FontWeight.w500,
    );
  }

  TextStyle get defaultStyle25 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: intersemibold,
      fontSize: 10.sp,
      color: Colors.black,
      fontWeight: FontWeight.w600,
    );
  }

  TextStyle get defaultStyle229 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: intersemibold,
      fontSize: 10.sp,
      color: Colors.white,
      fontWeight: FontWeight.w600,
    );
  }

  TextStyle get defaultStyle26 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: light,
      fontSize: 10.sp,
      color: Colors.black,
      fontWeight: FontWeight.w300,
    );
  }

  TextStyle get defaultStyle230 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: light,
      fontSize: 10.sp,
      color: Colors.white,
      fontWeight: FontWeight.w300,
    );
  }

  TextStyle get defaultStyle27 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: bold,
      fontSize: 20.sp,
      color: ColorPalette.primaryColor52,
      fontWeight: FontWeight.w700,
    );
  }

  TextStyle get defaultStyle231 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: bold,
      fontSize: 20.sp,
      color: Colors.white,
      fontWeight: FontWeight.w700,
    );
  }

  TextStyle get defaultStyle232 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: bold,
      fontSize: 20.sp,
      color: Colors.black,
      fontWeight: FontWeight.w700,
      shadows: [
        Shadow(
          blurRadius: 4.0,
          color: Colors.black.withValues(alpha: 0.5),
          offset: const Offset(0, 4.0),
        )
      ],
    );
  }

  TextStyle get defaultStyle29 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: regular,
      fontSize: 10.sp,
      color: Colors.black,
      fontWeight: FontWeight.w400,
    );
  }

  TextStyle get defaultStyle30 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: bold,
      fontSize: 10.sp,
      color: Colors.black,
      fontWeight: FontWeight.w600,
    );
  }

  TextStyle get defaultStyle31 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: bold,
      fontSize: 10.sp,
      color: Colors.white,
      fontWeight: FontWeight.w700,
    );
  }

  TextStyle get defaultStyle233 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: bold,
      fontSize: 10.sp,
      color: Colors.black,
      fontWeight: FontWeight.w700,
    );
  }

  TextStyle get defaultStyle234 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: bold,
      fontSize: 10.sp,
      color: Colors.black,
      fontWeight: FontWeight.w700,
    );
  }

  TextStyle get defaultStyle33 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: semiboldIBMP,
      fontSize: 24.sp,
      color: Colors.black,
      fontWeight: FontWeight.w600,
    );
  }

  TextStyle get defaultStyle34 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: regularIBMP,
      fontSize: 14.sp,
      color: ColorPalette.primaryColor52,
      // color: ColorPalette.primaryColor29,
      fontWeight: FontWeight.w400,
    );
  }

  TextStyle get defaultStyle235 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: regularIBMP,
      fontSize: 12.sp,
      color: Colors.black,
      fontWeight: FontWeight.w400,
    );
  }

  TextStyle get defaultStyle35 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: medium,
      fontSize: 16.sp,
      color: ColorPalette.primaryColor52,
      fontWeight: FontWeight.w500,
    );
  }

  TextStyle get defaultStyle36 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: medium,
      fontSize: 16.sp,
      color: Colors.black,
      fontWeight: FontWeight.w500,
    );
  }

  TextStyle get defaultStyle37 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: medium,
      fontSize: 18.sp,
      color: Colors.white,
      fontWeight: FontWeight.w500,
    );
  }

  TextStyle get defaultStyle38 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: regularIBMP,
      fontSize: 12.sp,
      color: Colors.black,
      fontWeight: FontWeight.w400,
    );
  }

  TextStyle get defaultStyle236 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: regularIBMP,
      fontSize: 10.sp,
      color: Colors.red,
      fontWeight: FontWeight.w400,
    );
  }

  TextStyle get defaultStyle39 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: regular,
      fontSize: 12.sp,
      color: Colors.black,
      fontWeight: FontWeight.w400,
    );
  }

  TextStyle get defaultStyle40 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: boldInter,
      fontSize: 12.sp,
      color: ColorPalette.primaryColor52,
      fontWeight: FontWeight.w700,
    );
  }

  TextStyle get defaultStyle41 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: medium,
      fontSize: 12.sp,
      color: Colors.black,
      fontWeight: FontWeight.w500,
    );
  }

  TextStyle get defaultStyle42 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: boldIBMP,
      fontSize: 12.sp,
      color: ColorPalette.primaryColor52,
      fontWeight: FontWeight.w700,
    );
  }

  TextStyle get defaultStyle43 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: medium,
      fontSize: 14.sp,
      fontWeight: FontWeight.w500,
      color: Colors.grey,
    );
  }

  TextStyle get defaultStyle44 {
    return TextStyle(
      decoration: TextDecoration.none,

      fontFamily: medium,
      fontSize: 18.sp,
      // color: Colors.white,
      fontWeight: FontWeight.w500,
    );
  }

  TextStyle get defaultStyle46 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: medium,
      fontSize: 16.sp,
      color: ColorPalette.primaryColor52,
      fontWeight: FontWeight.w500,
    );
  }

  TextStyle get defaultStyle48 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: light,
      fontSize: 14.sp,
      color: Colors.white,
      fontWeight: FontWeight.w300,
    );
  }

  TextStyle get defaultStyle49 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: medium,
      fontSize: 24.sp,
      color: ColorPalette.primaryColor52,
      fontWeight: FontWeight.w500,
    );
  }

  TextStyle get defaultStyle50 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: mediumInter,
      fontSize: 7.sp,
      color: ColorPalette.primaryColor7,
      fontWeight: FontWeight.w500,
      height: 9.5 / 10,
    );
  }

  TextStyle get defaultStyle237 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: mediumInter,
      fontSize: 10.sp,
      color: Colors.black,
      fontWeight: FontWeight.w500,
      height: 9.5 / 10,
    );
  }

  TextStyle get defaultStyle51 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: mediumInter,
      fontSize: 10.sp,
      color: Colors.black,
      fontWeight: FontWeight.w500,
    );
  }

  TextStyle get defaultStyle52 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: mediumInter,
      fontSize: 10.sp,
      color: ColorPalette.primaryColor3,
      fontWeight: FontWeight.w500,
    );
  }

  TextStyle get defaultStyle238 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: mediumInter,
      fontSize: 12.sp,
      color: Colors.black,
      fontWeight: FontWeight.w500,
    );
  }

  TextStyle get defaultStyle239 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: mediumInter,
      fontSize: 8.sp,
      color: ColorPalette.primaryColor3,
      fontWeight: FontWeight.w400,
    );
  }

  TextStyle get defaultStyle240 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: mediumInter,
      fontSize: 8.sp,
      color: Colors.black,
      fontWeight: FontWeight.w400,
    );
  }

  TextStyle get defaultStyle241 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: mediumInter,
      fontSize: 8.sp,
      color: Colors.black,
      fontWeight: FontWeight.w500,
    );
  }

  TextStyle get defaultStyle53 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: mediumInter,
      fontSize: 8.sp,
      color: ColorPalette.primaryColor3,
      fontWeight: FontWeight.w500,
    );
  }

  TextStyle get defaultStyle54 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: medium,
      fontSize: 14.sp,
      color: Colors.black,
      fontWeight: FontWeight.w500,
    );
  }

  TextStyle get defaultStyle55 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: bold,
      fontSize: 13.sp,
      // color: Colors.white,
      color: ColorPalette.primaryColor52,
      fontWeight: FontWeight.w700,
    );
  }

  TextStyle get defaultStyle242 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: bold,
      fontSize: 13.sp,
      color: Colors.white,
      fontWeight: FontWeight.w700,
    );
  }

  TextStyle get defaultStyle62 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: regular,
      fontSize: 13.sp,
      color: Colors.black,
      fontWeight: FontWeight.w400,
    );
  }

  TextStyle get defaultStyle243 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: regular,
      fontSize: 13.sp,
      color: Colors.black,
      fontWeight: FontWeight.w300,
    );
  }

  TextStyle get defaultStyle244 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: regular,
      fontSize: 13.sp,
      color: ColorPalette.primaryColor52,
      fontWeight: FontWeight.w400,
    );
  }

  TextStyle get defaultStyle245 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: regular,
      fontSize: 12.sp,
      color: Colors.black,
      fontWeight: FontWeight.w400,
    );
  }

  TextStyle get defaultStyle246 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: regular,
      fontSize: 10.sp,
      color: Colors.grey.shade600,
      fontWeight: FontWeight.w400,
    );
  }

  TextStyle get defaultStyle247 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: medium,
      fontSize: 12.sp,
      color: Colors.black,
      fontWeight: FontWeight.w500,
    );
  }

  TextStyle get defaultStyle63 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: regular,
      fontSize: 10.sp,
      color: ColorPalette.primaryColor13,
      fontWeight: FontWeight.w400,
    );
  }

  TextStyle get defaultStyle64 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: regular,
      fontSize: 13.sp,
      color: ColorPalette.primaryColor53,
      fontWeight: FontWeight.w400,
    );
  }

  TextStyle get defaultStyle65 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: semiboldIBMP,
      fontSize: 14.sp,
      color: Colors.white,
      fontWeight: FontWeight.w600,
    );
  }

  TextStyle get defaultStyle248 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: semiboldIBMP,
      fontSize: 14.sp,
      color: Colors.white,
      fontWeight: FontWeight.w600,
    );
  }

  TextStyle get defaultStyle249 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: semiboldIBMP,
      fontSize: 14.sp,
      color: Colors.black,
      fontWeight: FontWeight.w600,
    );
  }

  TextStyle get defaultStyle67 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: medium,
      fontSize: 13.sp,
      color: Colors.black,
      fontWeight: FontWeight.w500,
    );
  }

  TextStyle get defaultStyle250 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: medium,
      fontSize: 13.sp,
      color: Colors.black,
      fontWeight: FontWeight.w500,
    );
  }

  TextStyle get defaultStyle68 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: medium,
      fontSize: 12.sp,
      color: ColorPalette.primaryColor17,
      fontWeight: FontWeight.w500,
    );
  }

  TextStyle get defaultStyle251 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: medium,
      fontSize: 12.sp,
      color: Colors.black,
      fontWeight: FontWeight.w500,
    );
  }

  TextStyle get defaultStyle252 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: medium,
      fontSize: 12.sp,
      color: Colors.white.withValues(alpha: 0.2),
      fontWeight: FontWeight.w500,
    );
  }

  TextStyle get defaultStyle69 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: medium,
      fontSize: 8.sp,
      color: ColorPalette.primaryColor52,
      fontWeight: FontWeight.w500,
    );
  }

  TextStyle get defaultStyle253 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: medium,
      fontSize: 10.sp,
      color: Colors.black,
      fontWeight: FontWeight.w500,
    );
  }

  TextStyle get defaultStyle71 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: medium,
      fontSize: 20.sp,
      color: Colors.black,
      fontWeight: FontWeight.w500,
    );
  }

  TextStyle get defaultStyle254 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: medium,
      fontSize: 20.sp,
      color: Colors.black,
      fontWeight: FontWeight.w500,
    );
  }

  TextStyle get defaultStyle72 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: medium,
      fontSize: 10.sp,
      color: ColorPalette.primaryColor20,
      fontWeight: FontWeight.w500,
    );
  }

  TextStyle get defaultStyle73 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: medium,
      fontSize: 13.sp,
      color: Colors.black,
      fontWeight: FontWeight.w500,
    );
  }

  TextStyle get defaultStyle76 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: medium,
      fontSize: 13.sp,
      color: ColorPalette.primaryColor23,
      fontWeight: FontWeight.w500,
    );
  }

  TextStyle get defaultStyle77 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: boldInter,
      fontSize: 16.sp,
      color: Colors.white,
      fontWeight: FontWeight.w700,
    );
  }

  TextStyle get defaultStyle255 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: boldInter,
      fontSize: 16.sp,
      color: ColorPalette.primaryColor52,
      fontWeight: FontWeight.w700,
    );
  }

  TextStyle get defaultStyle256 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: boldInter,
      fontSize: 16.sp,
      color: Colors.black,
      fontWeight: FontWeight.w700,
    );
  }

  TextStyle get defaultStyle78 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: semiboldIBMP,
      fontSize: 16.sp,
      color: Colors.black,
      fontWeight: FontWeight.w700,
    );
  }

  TextStyle get defaultStyle257 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: medium,
      fontSize: 7.sp,
      color: Colors.white,
      fontWeight: FontWeight.w500,
    );
  }

  TextStyle get defaultStyle80 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: semiboldIBMP,
      fontSize: 16.sp,
      color: Colors.black,
      fontWeight: FontWeight.w600,
    );
  }

  TextStyle get defaultStyle81 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: semiboldIBMP,
      fontSize: 13.sp,
      color: ColorPalette.primaryColor48,
      fontWeight: FontWeight.w600,
    );
  }

  TextStyle get defaultStyle82 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: regular,
      fontSize: 14.sp,
      color: Colors.black,
      fontWeight: FontWeight.w400,
    );
  }

  TextStyle get defaultStyle258 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: regular,
      fontSize: 14.sp,
      color: Colors.black,
      fontWeight: FontWeight.w400,
    );
  }

  TextStyle get defaultStyle83 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: semiboldIBMP,
      fontSize: 13.sp,
      color: Colors.black,
      fontWeight: FontWeight.w600,
    );
  }

  TextStyle get defaultStyle84 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: semiboldIBMP,
      fontSize: 13.sp,
      color: ColorPalette.primaryColor45,
      fontWeight: FontWeight.w600,
    );
  }

  TextStyle get defaultStyle85 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: semiboldIBMP,
      fontSize: 24.sp,
      color: ColorPalette.primaryColor49,
      fontWeight: FontWeight.w600,
    );
  }

  TextStyle get defaultStyle86 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: medium,
      fontSize: 12.sp,
      color: const Color.fromARGB(255, 248, 179, 4),
      fontWeight: FontWeight.w500,
    );
  }

  TextStyle get defaultStyle87 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: regular,
      fontSize: 14.sp,
      color: Colors.black,
      fontWeight: FontWeight.w400,
    );
  }

  TextStyle get defaultStyle90 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: medium,
      fontSize: 16.sp,
      color: Colors.black,
      fontWeight: FontWeight.w500,
    );
  }

  TextStyle get defaultStyle91 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: regular,
      fontSize: 12.sp,
      color: Colors.black,
      fontWeight: FontWeight.w400,
    );
  }

  TextStyle get defaultStyle259 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: regular,
      fontSize: 12.sp,
      color: Colors.black,
      fontWeight: FontWeight.w400,
    );
  }

  TextStyle get defaultStyle260 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: regular,
      fontSize: 12.sp,
      color: Colors.white,
      fontWeight: FontWeight.w400,
    );
  }

  TextStyle get defaultStyle262 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: regular,
      fontSize: 14.sp,
      color: Colors.black,
      fontWeight: FontWeight.w400,
    );
  }

  TextStyle get defaultStyle92 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: intersemibold,
      fontSize: 13.sp,
      color: Colors.white,
      fontWeight: FontWeight.w600,
    );
  }

  TextStyle get defaultStyle263 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: intersemibold,
      fontSize: 13.sp,
      color: ColorPalette.primaryColor,
      fontWeight: FontWeight.w500,
    );
  }

  TextStyle get defaultStyle264 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: intersemibold,
      fontSize: 11.sp,
      color: Colors.white,
      fontWeight: FontWeight.w500,
    );
  }

  TextStyle get defaultStyle265 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: intersemibold,
      fontSize: 13.sp,
      color: Colors.white,
      fontWeight: FontWeight.w600,
    );
  }

  TextStyle get defaultStyle93 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: regular,
      fontSize: 10.sp,
      color: Colors.black,
      fontWeight: FontWeight.w400,
    );
  }

  TextStyle get defaultStyle95 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: regular,
      fontSize: 10.sp,
      color: ColorPalette.primaryColor25,
      fontWeight: FontWeight.w400,
    );
  }

  TextStyle get defaultStyle98 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: medium,
      fontSize: 6.sp,
      color: Colors.black,
      fontWeight: FontWeight.w500,
    );
  }

  TextStyle get defaultStyle101 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: medium,
      fontSize: 11.sp,
      color: Colors.white,
      fontWeight: FontWeight.w500,
    );
  }

  TextStyle get defaultStyle102 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: regular,
      fontSize: 10.sp,
      color: Colors.black,
      fontWeight: FontWeight.w400,
    );
  }

  TextStyle get defaultStyle103 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: light,
      fontSize: 10.sp,
      color: Colors.black,
      fontWeight: FontWeight.w300,
    );
  }

  TextStyle get defaultStyle104 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: regular,
      fontSize: 10.sp,
      color: ColorPalette.primaryColor52,
      fontWeight: FontWeight.w400,
    );
  }

  TextStyle get defaultStyle106 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: regular,
      fontSize: 14.sp,
      color: Colors.black,
      fontWeight: FontWeight.w400,
    );
  }

  TextStyle get defaultStyle266 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: regular,
      fontSize: 14.sp,
      color: Colors.black,
      fontWeight: FontWeight.w400,
    );
  }

  TextStyle get defaultStyle267 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: regular,
      fontSize: 10.sp,
      color: Colors.black,
      fontWeight: FontWeight.w400,
    );
  }

  TextStyle get defaultStyle268 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: regular,
      fontSize: 10.sp,
      color: ColorPalette.primaryColor39,
      fontWeight: FontWeight.w400,
    );
  }

  TextStyle get defaultStyle111 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: regular,
      fontSize: 10.sp,
      color: Colors.black,
      fontWeight: FontWeight.w400,
    );
  }

  TextStyle get defaultStyle113 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: bold,
      fontSize: 10.sp,
      color: Colors.black,
      fontWeight: FontWeight.w500,
    );
  }

  TextStyle get defaultStyle114 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: mediumInter,
      fontSize: 15.sp,
      color: ColorPalette.primaryColor3,
      fontWeight: FontWeight.w500,
    );
  }

  TextStyle get defaultStyle115 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: mediumInter,
      fontSize: 13.sp,
      color: ColorPalette.primaryColor44,
      fontWeight: FontWeight.w500,
    );
  }

  TextStyle get defaultStyle115a {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: mediumInter,
      fontSize: 11.sp,
      color: ColorPalette.primaryColor53,
      fontWeight: FontWeight.w400,
    );
  }

  TextStyle get defaultStyle116 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: mediumInter,
      fontSize: 20.sp,
      color: Colors.black,
      fontWeight: FontWeight.w500,
    );
  }

  TextStyle get defaultStyle269 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: mediumInter,
      fontSize: 16.sp,
      color: Colors.black,
      fontWeight: FontWeight.w500,
    );
  }

  TextStyle get defaultStyle118 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: mediumInter,
      fontSize: 16.sp,
      color: Colors.white,
      fontWeight: FontWeight.w500,
    );
  }

  TextStyle get defaultStyle119 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: medium,
      fontSize: 16.sp,
      color: Colors.black,
      fontWeight: FontWeight.w500,
    );
  }

  TextStyle get defaultStyle120 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: medium,
      fontSize: 10.sp,
      color: Colors.black,
      fontWeight: FontWeight.w500,
    );
  }

  TextStyle get defaultStyle270 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: mediumInter,
      fontSize: 10.sp,
      color: Colors.black,
      fontWeight: FontWeight.w500,
      height: 1.5,
    );
  }

  TextStyle get defaultStyle271 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: mediumInter,
      fontSize: 14.sp,
      color: Colors.black,
      fontWeight: FontWeight.w500,
    );
  }

  TextStyle get defaultStyle272 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: mediumInter,
      fontSize: 10.sp,
      color: Colors.black,
      fontWeight: FontWeight.w500,
    );
  }

  TextStyle get defaultStyle273 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: mediumInter,
      fontSize: 16.sp,
      color: Colors.black,
      fontWeight: FontWeight.w500,
    );
  }

  TextStyle get defaultStyle125 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: mediumInter,
      fontSize: 16.sp,
      color: Colors.black,
      fontWeight: FontWeight.w500,
    );
  }

  TextStyle get defaultStyle274 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: mediumInter,
      fontSize: 12.sp,
      color: ColorPalette.primaryColor53,
      fontWeight: FontWeight.w500,
    );
  }

  TextStyle get defaultStyle275 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: mediumInter,
      fontSize: 12.sp,
      color: Colors.black,
      fontWeight: FontWeight.w500,
    );
  }

  TextStyle get defaultStyle129 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: intersemibold,
      fontSize: 20.sp,
      color: Colors.black,
      fontWeight: FontWeight.w600,
    );
  }

  TextStyle get defaultStyle278 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: intersemibold,
      fontSize: 14.sp,
      color: Colors.black,
      fontWeight: FontWeight.w400,
    );
  }

  TextStyle get defaultStyle279 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: intersemibold,
      fontSize: 20.sp,
      color: ColorPalette.primaryColor52,
      fontWeight: FontWeight.w600,
    );
  }

  TextStyle get defaultStyle130 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: medium,
      fontSize: 18.sp,
      color: Colors.black,
      fontWeight: FontWeight.w500,
    );
  }

  TextStyle get defaultStyle280 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: medium,
      fontSize: 16.sp,
      color: Colors.black,
      fontWeight: FontWeight.w500,
    );
  }

  TextStyle get defaultStyle132 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: bold,
      fontSize: 15.sp,
      color: Colors.black,
      fontWeight: FontWeight.w700,
    );
  }

  TextStyle get defaultStyle135 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: bold,
      fontSize: 15.sp,
      color: ColorPalette.primaryColor52,
      fontWeight: FontWeight.w700,
    );
  }

  TextStyle get defaultStyle145 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: bold,
      fontSize: 15.sp,
      color: Colors.black,
      fontWeight: FontWeight.w700,
    );
  }

  TextStyle get defaultStyle282 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: bold,
      fontSize: 15.sp,
      color: Colors.black,
      fontWeight: FontWeight.w700,
    );
  }

  TextStyle get defaultStyle149 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: intersemibold,
      fontSize: 10.sp,
      color: ColorPalette.primaryColor34,
      fontWeight: FontWeight.w600,
    );
  }

  TextStyle get defaultStyle150 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: intersemibold,
      fontSize: 13.sp,
      color: ColorPalette.primaryColor,
      fontWeight: FontWeight.w600,
    );
  }

  TextStyle get defaultStyle151 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: bold,
      fontSize: 20.sp,
      color: ColorPalette.primaryColor1,
      fontWeight: FontWeight.w700,
    );
  }

  TextStyle get defaultStyle152 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: intersemibold,
      fontSize: 14.sp,
      fontWeight: FontWeight.w600,
    );
  }

  TextStyle get defaultStyle283 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: intersemibold,
      fontSize: 12.sp,
      color: Colors.black,
      fontWeight: FontWeight.w600,
    );
  }

  TextStyle get defaultStyle153 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: intersemibold,
      fontSize: 20.sp,
      color: ColorPalette.primaryColor34,
      fontWeight: FontWeight.w600,
    );
  }

  TextStyle get defaultStyle154 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: intersemibold,
      fontSize: 20.sp,
      color: Colors.black,
      fontWeight: FontWeight.w600,
    );
  }

  TextStyle get defaultStyle284 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: intersemibold,
      fontSize: 20.sp,
      color: Colors.black,
      fontWeight: FontWeight.w600,
    );
  }

  TextStyle get defaultStyle156 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: light,
      fontSize: 8.sp,
      color: Colors.black,
      fontWeight: FontWeight.w300,
    );
  }

  TextStyle get defaultStyle156f {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: light,
      fontSize: 9.sp,
      color: Colors.black,
      fontWeight: FontWeight.w400,
    );
  }

  TextStyle get defaultStyle285 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: light,
      fontSize: 10.sp,
      color: Colors.black,
      fontWeight: FontWeight.w400,
    );
  }

  TextStyle get defaultStyle159 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: intersemibold,
      fontSize: 24.sp,
      color: ColorPalette.primaryColor54,
      fontWeight: FontWeight.w600,
    );
  }

  TextStyle get defaultStyle286 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: intersemibold,
      fontSize: 24.sp,
      color: Colors.white,
      fontWeight: FontWeight.w600,
    );
  }

  TextStyle get defaultStyle161 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: regular,
      fontSize: 14.sp,
      color: ColorPalette.primaryColor36,
      fontWeight: FontWeight.w400,
    );
  }

  TextStyle get defaultStyle287 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: regular,
      fontSize: 10.sp,
      color: ColorPalette.primaryColor39,
      fontWeight: FontWeight.w400,
    );
  }

  TextStyle get defaultStyle288 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: regular,
      fontSize: 14.sp,
      color: Colors.black,
      fontWeight: FontWeight.w400,
    );
  }

  TextStyle get defaultStyle162 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: bold,
      fontSize: 16.sp,
      color: Colors.black,
      fontWeight: FontWeight.w700,
    );
  }

  TextStyle get defaultStyle164 {
    return TextStyle(
      decoration: TextDecoration.underline,
      fontFamily: medium,
      fontSize: 15.sp,
      color: ColorPalette.primaryColor52,
      fontWeight: FontWeight.w500,
    );
  }

  TextStyle get defaultStyle166 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: regular,
      fontSize: 10.sp,
      color: Colors.grey,
      fontWeight: FontWeight.w500,
    );
  }

  TextStyle get defaultStyle167 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: regular,
      fontSize: 13.sp,
      color: ColorPalette.primaryColor23,
      fontWeight: FontWeight.w400,
    );
  }

  TextStyle get defaultStyle289 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: regular,
      fontSize: 11.sp,
      color: Colors.black,
      fontWeight: FontWeight.w300,
    );
  }

  TextStyle get defaultStyle290 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: light,
      fontSize: 13.sp,
      color: Colors.black,
      fontWeight: FontWeight.w300,
    );
  }

  TextStyle get defaultStyle169 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: bold,
      fontSize: 14.sp,
      color: Colors.black,
      fontWeight: FontWeight.w600,
    );
  }

  TextStyle get defaultStyle291 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: bold,
      fontSize: 14.sp,
      color: Colors.white,
      fontWeight: FontWeight.w600,
    );
  }

  TextStyle get defaultStyle170 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: bold,
      fontSize: 12.sp,
      color: Colors.black,
      fontWeight: FontWeight.w500,
    );
  }

  TextStyle get defaultStyle171 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: boldIBMP,
      fontSize: 11.sp,
      color: Colors.black,
      fontWeight: FontWeight.w700,
    );
  }

  TextStyle get defaultStyle172 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: boldIBMP,
      fontSize: 10.sp,
      color: Colors.black,
      fontWeight: FontWeight.w700,
    );
  }

  TextStyle get defaultStyle293 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: bold,
      fontSize: 12.sp,
      color: Colors.black,
      fontWeight: FontWeight.w700,
    );
  }

  TextStyle get defaultStyle294 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: bold,
      fontSize: 14.sp,
      color: Colors.black,
      fontWeight: FontWeight.w700,
    );
  }

  TextStyle get defaultStyle175 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: boldIBMP,
      fontSize: 13.sp,
      color: ColorPalette.primaryColor52,
      fontWeight: FontWeight.w700,
    );
  }

  TextStyle get defaultStyle176 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: boldIBMP,
      fontSize: 8.sp,
      color: Colors.white,
      fontWeight: FontWeight.w700,
    );
  }

  TextStyle get defaultStyle177 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: boldIBMP,
      fontSize: 6.sp,
      color: Colors.white,
      fontWeight: FontWeight.w700,
    );
  }

  TextStyle get defaultStyle178 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: regular,
      fontSize: 16.sp,
      color: ColorPalette.primaryColor52,
      fontWeight: FontWeight.w400,
    );
  }

  TextStyle get defaultStyle179 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: boldIBMP,
      fontSize: 24.sp,
      color: Colors.black,
      fontWeight: FontWeight.w700,
    );
  }

  TextStyle get defaultStyle180 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: medium,
      fontSize: 18.sp,
      color: ColorPalette.primaryColor53,
      fontWeight: FontWeight.w500,
    );
  }

  TextStyle get defaultStyle181 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: semiboldIBMP,
      fontSize: 18.sp,
      color: Colors.black,
      fontWeight: FontWeight.w600,
    );
  }

  TextStyle get defaultStyle182 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: regularIBMP,
      fontSize: 18.sp,
      color: Colors.black,
      fontWeight: FontWeight.w400,
    );
  }

  TextStyle get defaultStyle183 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: regularIBMP,
      fontSize: 8.sp,
      color: Colors.black,
      fontWeight: FontWeight.w400,
    );
  }

  TextStyle get defaultStyle296 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: regularIBMP,
      fontSize: 10.sp,
      color: Colors.grey[600],
      fontWeight: FontWeight.w400,
    );
  }

  TextStyle get defaultStyle297 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: regularIBMP,
      fontSize: 10.sp,
      color: Colors.white,
      fontWeight: FontWeight.w500,
    );
  }

  TextStyle get defaultStyle298 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: regularIBMP,
      fontSize: 10.sp,
      color: Colors.black,
      fontWeight: FontWeight.w500,
    );
  }

  TextStyle get defaultStyle299 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: regularIBMP,
      fontSize: 12.sp,
      color: Colors.black,
      fontWeight: FontWeight.w500,
    );
  }

  TextStyle get defaultStyle300 {
    return TextStyle(
      decoration: TextDecoration.underline,
      fontFamily: regularIBMP,
      fontSize: 12.sp,
      color: Colors.black,
      fontWeight: FontWeight.w500,
      decorationColor: Colors.black,
    );
  }

  TextStyle get defaultStyle301 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: regularIBMP,
      fontSize: 12.sp,
      color: Colors.black,
      fontWeight: FontWeight.w700,
    );
  }

  TextStyle get defaultStyle302 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: regularIBMP,
      fontSize: 12.sp,
      color: Colors.black,
      fontWeight: FontWeight.w700,
    );
  }

  TextStyle get defaultStyle303 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: regularIBMP,
      fontSize: 10.sp,
      color: Colors.black,
      fontWeight: FontWeight.w500,
    );
  }

  TextStyle get defaultStyle304 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: regularIBMP,
      fontSize: 8.sp,
      color: Colors.black,
      fontWeight: FontWeight.w500,
    );
  }

  TextStyle get defaultStyle184 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: medium,
      fontSize: 8.sp,
      color: ColorPalette.primaryColor53,
      fontWeight: FontWeight.w500,
    );
  }

  TextStyle get defaultStyle305 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: intersemibold,
      fontSize: 13.sp,
      color: Colors.black,
      fontWeight: FontWeight.w600,
    );
  }

  TextStyle get defaultStyle306 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: intersemibold,
      fontSize: 10.sp,
      color: Colors.black,
      fontWeight: FontWeight.w600,
    );
  }

  TextStyle get defaultStyle192 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: boldInter,
      fontSize: 10.sp,
      color: Colors.white,
      fontWeight: FontWeight.w700,
    );
  }

  TextStyle get defaultStyle193 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: bold,
      fontSize: 14.sp,
      color: Colors.black,
      fontWeight: FontWeight.w600,
    );
  }

  TextStyle get defaultStyle307 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: regular,
      fontSize: 13.sp,
      color: Colors.black,
      fontWeight: FontWeight.w400,
    );
  }

  TextStyle get defaultStyle196 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: regular,
      fontSize: 12.sp,
      color: Colors.black,
      fontWeight: FontWeight.w400,
    );
  }

  TextStyle get defaultStyle197 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: regularIBMP,
      fontSize: 16.sp,
      color: Colors.white,
      fontWeight: FontWeight.w400,
    );
  }

  TextStyle get defaultStyle198 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: regularIBMP,
      fontSize: 14.sp,
      color: Colors.black,
      fontWeight: FontWeight.w400,
    );
  }

  TextStyle get defaultStyle200 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: regularIBMP,
      fontSize: 10.sp,
      color: Colors.black54,
      fontWeight: FontWeight.w400,
    );
  }

  TextStyle get defaultStyle201 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: semiboldIBMP,
      fontSize: 16.sp,
      color: Colors.white,
      fontWeight: FontWeight.w600,
    );
  }

  TextStyle get defaultStyle308 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: semiboldIBMP,
      fontSize: 16.sp,
      color: Colors.black,
      fontWeight: FontWeight.w600,
    );
  }

  TextStyle get defaultStyle202 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: boldIBMP,
      fontSize: 16.sp,
      color: Colors.black,
      fontWeight: FontWeight.w700,
    );
  }

  TextStyle get defaultStyle203 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: boldIBMP,
      fontSize: 15.sp,
      color: Colors.black,
      fontWeight: FontWeight.w700,
    );
  }

  TextStyle get defaultStyle207 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: regularIBMP,
      fontSize: 14.sp,
      color: Colors.black,
      fontWeight: FontWeight.w400,
    );
  }

  TextStyle get defaultStyle208 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: medium,
      fontSize: 12.sp,
      color: Colors.black,
      fontWeight: FontWeight.w500,
    );
  }

  TextStyle get defaultStyle209 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: regular,
      fontSize: 15.sp,
      color: Colors.black,
      fontWeight: FontWeight.w400,
    );
  }

  TextStyle get defaultStyle211 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: regular,
      fontSize: 8.sp,
      color: Colors.black,
      fontWeight: FontWeight.w400,
    );
  }

  TextStyle get defaultStyle212 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: medium,
      fontSize: 9.sp,
      color: Colors.white,
      fontWeight: FontWeight.w500,
    );
  }

  TextStyle get defaultStyle217 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: boldInter,
      fontSize: 12.sp,
      color: Colors.black,
      fontWeight: FontWeight.w700,
    );
  }

  TextStyle get defaultStyle221 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: medium,
      fontSize: 20.sp,
      color: Colors.white,
      fontWeight: FontWeight.w500,
    );
  }

  TextStyle get defaultStyle222 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: bold,
      fontSize: 13.sp,
      color: Colors.black,
      fontWeight: FontWeight.w500,
    );
  }

  TextStyle get defaultStyle223 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: bold,
      fontSize: 10.sp,
      color: Colors.black,
      fontWeight: FontWeight.w500,
    );
  }

  TextStyle get defaultStyle310 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: bold,
      fontSize: 8.sp,
      color: Colors.white,
      fontWeight: FontWeight.w700,
    );
  }

  TextStyle get defaultStyle311 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: boldInter,
      fontSize: 7.sp,
      color: ColorPalette.primaryColor52,
      // color: Colors.white,
      fontWeight: FontWeight.w700,
    );
  }

  TextStyle get defaultStyle312 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: boldInter,
      fontSize: 12.sp,
      color: Colors.white,
      fontWeight: FontWeight.w700,
    );
  }

  TextStyle get defaultStyle313 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: boldInter,
      fontSize: 24.sp,
      color: Colors.black,
      fontWeight: FontWeight.w700,
    );
  }

  TextStyle get defaultStyle314 {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: bold,
      fontSize: 9.sp,
      color: Colors.black,
      fontWeight: FontWeight.w700,
    );
  }
}
