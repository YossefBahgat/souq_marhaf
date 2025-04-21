import 'package:flutter/material.dart';

class AppGradients {
  static const LinearGradient bottomNavigationBarGradient = LinearGradient(
    colors: [
      Color(0xff303342),
      Color(0xff374056),
      Color(0xff454B5E),
      Color(0xff374056),
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  static LinearGradient blackGradient = const LinearGradient(colors: [
    Color(0xFF24252A),
    Color(0xFF3E4144), // 3E4144
  ], begin: Alignment.centerRight, end: Alignment.centerLeft);
  static LinearGradient black1Gradient =const LinearGradient(colors: [
     Color(0xFF24252A),
     Color(0xFF3E4144), // 3E4144
  ], begin: Alignment.centerLeft, end: Alignment.centerRight);

  static LinearGradient redGradient = LinearGradient(colors: [
    const Color(0xFFFFFFFF),
    const Color(0xFFDC038F).withOpacity(.9),
    const Color(0xFF91174C), // 3E4144
  ], begin: Alignment.centerRight, end: Alignment.centerLeft);

  static LinearGradient orangeGradient = const LinearGradient(
      colors: [Color(0xffF89400), Color(0xffE44800)],
      begin: Alignment.centerLeft,
      end: Alignment.centerRight);

  static LinearGradient blueGradient = const LinearGradient(colors: [
    Color(0xff2F54C9),
    Color(0xff3F60CD),
    Color(0xffBDCDFE),
  ], begin: Alignment.centerLeft, end: Alignment.centerRight);

  static LinearGradient pinkGradient = const LinearGradient(colors: [
    Color(0xff9A3584),
    Color(0xffD10EA6),
    Color(0xffF233DF),
    Color(0xffFFD8F4),
  ], begin: Alignment.centerLeft, end: Alignment.centerRight);

  static LinearGradient greenGradient = const LinearGradient(colors: [
    Color(0xff4AAE54),
    Color(0xff72FC88),
    Color(0xff69C461),
  ], begin: Alignment.centerLeft, end: Alignment.centerRight);

  static LinearGradient winnerTextGradient = LinearGradient(colors: [
    const Color(0xFFFFFCFB),
    const Color(0xFFC1C9E0).withOpacity(.9),
    const Color(0xFFFFFFFF),
    const Color(0xFFC1C9E0),
    const Color(0xFF90A0BF), // 3E4144
  ], begin: Alignment.topRight, end: Alignment.centerLeft);

  static LinearGradient redBlueGradient = const LinearGradient(
    colors: [
      Color(0xff8E3254),
      Color(0x80404F7E),
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  static LinearGradient purpleGradient = LinearGradient(
    colors: [
      const Color(0xFF500E53),
      const Color(0xFFC638CC).withOpacity(.9),
      const Color(0xFFB21FB9),
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
  static LinearGradient vipGradient = LinearGradient(
    colors: [
      const Color(0xff8E3254).withOpacity(.30),
      const Color(0xff404F7E).withOpacity(.30),
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
  static LinearGradient numberOfPlayersGradient = const LinearGradient(
    colors: [
      Color(0xFF90004F),
      Color(0xFF93A6D2),
    ],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );
  static LinearGradient roomNumberGradient = const LinearGradient(
    colors: [
      Color(0xFF303342),
      Color(0xFF374056),
      Color(0xFF454B5E),
      Color(0xFF374056),
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  static LinearGradient communicationTypeGradient = LinearGradient(
    colors: [
      const Color(0xFFFFA4EB).withOpacity(0.6),
      const Color(0xff500E53).withOpacity(0.6),
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
  static LinearGradient winnerGradient =  LinearGradient(
    colors: [
      const Color(0xFF8E3254).withOpacity(0.23),
      const Color(0xFF404F7E).withOpacity(0.23),
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  static LinearGradient rankingGradient = const LinearGradient(
    colors: [
      Color(0xFF8E3254),
      Color(0xff404F7E),
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    stops: [0.0, 1.0],
  );


}
