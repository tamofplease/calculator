import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import '../../main.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class NumericButton extends StatelessWidget {
  final double number;
  NumericButton(this.number, {Key key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: NeumorphicButton(
        onPressed: () => context.read(main_calc_provider).pressNumber(number),
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
            number.round().toString(),
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

 