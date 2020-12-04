import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:hooks_riverpod/all.dart';

import '../main.dart';

class MainCalc extends HookWidget {
  const MainCalc({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context){
    final state = useProvider(main_calc_provider.state).showString;
    return NeumorphicText(
      state,
      style: NeumorphicStyle(
        depth: 2,
      ),
      textStyle: NeumorphicTextStyle(
        fontSize: 40,
      ),
    );
  }
}