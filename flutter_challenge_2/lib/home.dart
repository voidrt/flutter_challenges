import 'package:flutter/material.dart';
import 'package:flutter_1/constants/app_constants.dart';
import 'package:flutter_1/desktop/desktop_home.dart';
import 'package:flutter_1/mobile/mobile_home.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final MediaQueryData mediaQuery = MediaQuery.of(context);

    return mediaQuery.size.width <= Constants.kMobileThreshold
        ? const MobileHome()
        : const DesktopHome();
  }
}
