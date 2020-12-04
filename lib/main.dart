import 'package:calculator/models/calc_view_controller.dart';
import 'package:calculator/my_home_page.dart';
import 'package:calculator/providers/numeric_notifier.dart';

import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:hooks_riverpod/all.dart';

final main_calc_provider = StateNotifierProvider((ref) => NumericNotifier());
// final view_provider = StateNotifierProvider((ref) => );

void main() => runApp(
  const ProviderScope(child: MyApp()),
);

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return NeumorphicApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      themeMode: ThemeMode.light,
      theme: NeumorphicThemeData(
        baseColor: Colors.blueGrey.shade200,
        // baseColor: Color(0xffDDDDDD),
        lightSource: LightSource.topLeft,
        depth: 4,
      ),
      darkTheme: NeumorphicThemeData(
        baseColor: Color(0xFF3E3E3E),
        lightSource: LightSource.topLeft,
        depth: 4,
      ),
      highContrastTheme: ThemeData(
        backgroundColor: Color(0xECF0F3),
      ),
      home: MyHomePage(),
    );
  }
}
