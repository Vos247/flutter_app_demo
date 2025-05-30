import 'dart:math' as math;

import 'package:flutter/material.dart';

class ColorPalette {
  static const Color primaryColor = Color(0xffF65905);
  static const Color primaryColor1 = Color(0xffF80492);
  static const Color primaryColor2 = Color(0xffA9A9A4);
  static const Color primaryColor3 = Color(0xff2A5872);
  static const Color primaryColor4 = Color(0xffE4C1FE);
  static const Color primaryColor5 = Color(0x28FFFFFF);
  static const Color primaryColor6 = Color(0xFFD9D9D9);
  static const Color primaryColor7 = Color(0xFF9A9A9A);
  static const Color primaryColor12 = Color(0xFF939393);
  static const Color primaryColor13 = Color(0xFF888888);
  static const Color primaryColor14 = Color(0xFFE0E0E0);
  static const Color primaryColor15 = Color(0xFFDADADA);
  static const Color primaryColor16 = Color(0xFFEEEEEE);
  static const Color primaryColor17 = Color(0xFF646464);
  static const Color primaryColor18 = Color(0xFFC2C2C2);
  static const Color primaryColor20 = Color(0xFF848484);
  static const Color primaryColor23 = Color(0xFFA7A7A7);
  static const Color primaryColor24 = Color(0xFFCECECE);
  static const Color primaryColor25 = Color(0xFF909090);
  static const Color primaryColor27 = Color(0xFFF1F1F1);
  static const Color primaryColor28 = Color(0xFFC8C8C8);
  static const Color primaryColor29 = Color(0xFF006446);
  static const Color primaryColor30 = Color(0xFFFFB13B);
  static const Color primaryColor31 = Color(0xFFCACACA);
  static const Color primaryColor32 = Color(0xFF5C5C5C);
  static const Color primaryColor33 = Color(0xFF6A3181);
  static const Color primaryColor34 = Color(0xFFBCBCBC);
  static const Color primaryColor36 = Color(0xFFB0B0B0);
  static const Color primaryColor37 = Color(0xFF737373);
  static const Color primaryColor39 = Color(0xFF6D6868);
  static const Color primaryColor40 = Color(0xFFCACACA);
  static const Color primaryColor41 = Color(0xFF3B3842);
  static const Color primaryColor42 = Color(0xFFEB7D17);
  static const Color primaryColor43 = Color(0xFFE88B00);
  static const Color primaryColor44 = Color(0xFFEC7507);
  static const Color primaryColor45 = Color(0xFFC7D8EF);
  static const Color primaryColor48 = Color(0xFF012133);
  static const Color primaryColor49 = Color(0xFF044C73);
  static const Color primaryColor50 = Color(0xFF046FAC);
  static const Color primaryColor52 = Color(0xFF000000);
  static const Color primaryColor53 = Color(0xFFFFA800);
  static const Color primaryColor54 = Color(0xFFFB5607);
  static const Color primaryColor55 = Color(0xFFFF8088);
  static const Color primaryColor56 = Color(0xFFFF2A2A);
  static const Color primaryColor57 = Color(0xFFBB2D00);
  static const Color primaryColor58 = Color(0xFFFF9D09);
  static const Color primaryColor59 = Color(0xFFFB7C3F);
  static const Color primaryColor60 = Color(0xFF4EBE99);
  static const Color primaryColor61 = Color(0xFFFFFFFF);

  static const Color gradient1 = Color(0xFFB901BB);
  static const Color gradient2 = Color(0xFF921CF5);
  static const Color gradient4 = Color(0xFFFDDBDE);
  static const Color gradient5 = Color(0xFFE80274);
  static const Color gradient6 = Color(0xFF919191);
  static const Color gradient7 = Color(0xFF4B4852);
  static const Color gradient9 = Color(0xFFFFB1B6);
  static const Color gradient10 = Color(0xFF959595);
  static const Color gradient11 = Color(0xFFFE3831);
  static const Color gradient12 = Color(0xFFEC7507);
  static const Color gradient13 = Color(0xFFFFBB37);
  static const Color gradient14 = Color(0xFFFAE107);
  static const Color gradient15 = Color(0xFF1F6B97);
  static const Color gradient16 = Color(0xFFFFB2B2);
  static const Color gradient17 = Color(0xFFF40000);
  static const Color gradient18 = Color(0xFFFFB703);
  static const Color gradient19 = Color(0xFF330202);
  static const Color gradient20 = Color(0xFF990606);
  static const Color gradient21 = Color(0xFFA30C0C);
  static const Color gradient22 = Color(0xFFF6B77C);
  static const Color gradient24 = Color(0xFF27C6FE);
}

class Gradients {
  static Gradient bgButton1 = const LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [
      ColorPalette.gradient12,
      ColorPalette.gradient11,
    ],
  );

  static Gradient bgButton2 = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      ColorPalette.gradient11.withValues(alpha: 0.2),
      ColorPalette.gradient12.withValues(alpha: 0.2),
    ],
  );

  static Gradient bgButton3 = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Colors.black.withValues(alpha: 0.1),
      ColorPalette.gradient21.withValues(alpha: 0.1),
    ],
  );

  static Gradient bgButton4 = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [
      ColorPalette.gradient16.withValues(alpha: 0.8),
      ColorPalette.gradient16.withValues(alpha: 0),
    ],
  );

  static Gradient bgButton5 = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomCenter,
    colors: [
      ColorPalette.gradient17.withValues(alpha: 0.1),
      Colors.white.withValues(alpha: 0.1),
    ],
  );

  static const Gradient bgButton6 = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [
      ColorPalette.gradient1,
      ColorPalette.gradient2,
    ],
  );

  static const Gradient bgButton7 = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      ColorPalette.gradient11,
      ColorPalette.gradient12,
    ],
  );

  static const Gradient bgButton8 = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [
      ColorPalette.gradient11,
      ColorPalette.gradient12,
    ],
  );

  static const Gradient bgButton9 = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [
      ColorPalette.gradient11,
      ColorPalette.gradient12,
    ],
  );

  static const Gradient bgButton10 = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [
      ColorPalette.gradient5,
      ColorPalette.gradient10,
    ],
  );

  static Gradient bgButton13 = LinearGradient(
    begin: Alignment.bottomLeft,
    end: Alignment.bottomRight,
    colors: [
      ColorPalette.primaryColor56.withValues(alpha: 0.5),
      ColorPalette.primaryColor58,
    ],
    transform: const GradientRotation(50 * math.pi / 200),
  );

  static Gradient bgButton14 = LinearGradient(
    begin: Alignment.bottomLeft,
    end: Alignment.bottomRight,
    colors: [
      ColorPalette.primaryColor42,
      ColorPalette.primaryColor43.withValues(alpha: 0.2),
    ],
    transform: const GradientRotation(50 * math.pi / 200),
  );

  static Gradient bgButton15 = const LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [
      ColorPalette.gradient22,
      ColorPalette.gradient9,
    ],
  );

  static const Gradient bgButton16 = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [
      ColorPalette.gradient13,
      ColorPalette.gradient14,
    ],
  );

  static Gradient bgButton17 = const LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [
      ColorPalette.primaryColor6,
      ColorPalette.primaryColor37,
    ],
  );

  static Gradient bgButton18 = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [
      Colors.white,
      Colors.white.withValues(alpha: 0),
    ],
  );

  static const Gradient bgButton19 = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      ColorPalette.primaryColor58,
      ColorPalette.primaryColor57,
    ],
  );

  static const Gradient bgButton20 = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      ColorPalette.primaryColor56,
      ColorPalette.primaryColor57,
    ],
  );

  static const Gradient bgButton21 = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [
      ColorPalette.primaryColor54,
      ColorPalette.primaryColor57,
    ],
  );

  static const Gradient bgButton22 = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [
      ColorPalette.gradient6,
      ColorPalette.gradient7,
    ],
  );

  static const Gradient bgButton23 = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [
      ColorPalette.gradient11,
      ColorPalette.gradient10,
    ],
  );

  static const Gradient bgButton24 = LinearGradient(
    begin: Alignment.bottomLeft,
    end: Alignment.bottomRight,
    colors: [
      ColorPalette.primaryColor40,
      ColorPalette.primaryColor41,
    ],
    transform: GradientRotation(50 * math.pi / 200),
  );

  static Gradient bgButton25 = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      ColorPalette.gradient20.withValues(alpha: 0.05),
      ColorPalette.gradient19.withValues(alpha: 0.05),
    ],
  );

  static Gradient bgButton26 = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Colors.white.withValues(alpha: 0),
      Colors.white.withValues(alpha: 0.2),
    ],
  );

  static Gradient bgButton27 = const LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      ColorPalette.primaryColor55,
      ColorPalette.primaryColor52,
    ],
  );

  static Gradient bgButton28 = const LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      ColorPalette.gradient12,
      ColorPalette.gradient16,
    ],
  );
}
