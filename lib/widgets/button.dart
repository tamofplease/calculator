import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class Button extends StatelessWidget {
  final String icon;
  Button({Key key, this.icon}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return NeumorphicButton(
      onPressed: () {},
      style: NeumorphicStyle(
        shape: NeumorphicShape.flat,
        boxShape: NeumorphicBoxShape.circle(),
      ),
      padding: const EdgeInsets.all(12.0),
      child: Icon(
        Icons.favorite_border,
        color: _iconsColor(context),
      ),
    );
  }

  Color _iconsColor(BuildContext context) {
    final theme = NeumorphicTheme.of(context);
    if (theme.isUsingDark) {
      return theme.current.accentColor;
    } else {
      return null;
    }
  }
}

 