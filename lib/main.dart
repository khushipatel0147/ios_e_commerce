import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:ios_e_commerce/provider/shopProvider.dart';
import 'package:ios_e_commerce/view/mainScreen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) {
      return MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => ShopProvider(),
          )
        ],
        child: CupertinoApp(
          debugShowCheckedModeBanner: false,
          useInheritedMediaQuery: true,
          routes: {
            '/': (p0) => MainScreen(),
          },
        ),
      );
    },
  ));
}
