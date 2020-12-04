import 'package:calculator/screens/button_screen.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../main.dart';

class CalcButton extends StatelessWidget {
  final CalcType type;
  CalcButton(this.type, {Key key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: NeumorphicButton(
        onPressed: () => context.read(main_calc_provider).pressCalc(type),
        style: NeumorphicStyle(
          shape: NeumorphicShape.flat,
          boxShape: NeumorphicBoxShape.circle(),
        ),
        padding: const EdgeInsets.all(12.0),
        child: Container(
          alignment: Alignment.center,
          width: 40,
          height: 40,
          child: Text(
            map[type],
            style: TextStyle(
              fontSize: 20,
              color: _textColor(context),
            ),
          ),
        ),
      ),
    );
  }

  Color _textColor(BuildContext context) {
    final theme = NeumorphicTheme.of(context);
    if (theme.isUsingDark) {
      return theme.current.accentColor;
    } else {
      return null;
    }
  }
}


Map<CalcType, String> map = {
  CalcType.Add: "+",
  CalcType.Sub: "-",
  CalcType.Mul: "X",
  CalcType.Div: "/",
  CalcType.Equal: "=",
  CalcType.Mod: "%",
  CalcType.Product: "^",
  CalcType.Sqrt: "Sqrt",
  CalcType.Clear: "C",
  CalcType.Dod: ".",
};
 