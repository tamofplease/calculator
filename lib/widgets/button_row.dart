import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class ButtonRow extends StatelessWidget {
  final Widget child1,child2,child3,child4;
  ButtonRow({Key key, 
    this.child1,
    this.child2,
    this.child3,
    this.child4,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        child1,
        child2,
        child3,
        child4,
      ],
    );
  }
}