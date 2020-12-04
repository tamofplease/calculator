import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class ButtonColumn extends StatelessWidget {
  final Widget child1,child2,child3,child4, child5;
  ButtonColumn({Key key, 
    this.child1,
    this.child2,
    this.child3,
    this.child4,
    this.child5,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        child1,
        child2,
        child3,
        child4,
        child5,
      ],
    );
  }
}