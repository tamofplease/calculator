import 'package:calculator/widgets/answer_calc.dart';
import 'package:calculator/widgets/main_calc.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class CalculateScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: SizedBox(
        height: 250,
        width: size.width,
        child: Neumorphic(
          margin: EdgeInsets.only(top: 12),
          style: NeumorphicStyle(
            depth: -3,
            shape: NeumorphicShape.flat,
            boxShape:
                NeumorphicBoxShape.roundRect(BorderRadius.circular(8)),
            border: NeumorphicBorder()
          ),
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: <Widget>[
              Container(
                alignment: Alignment.topCenter,
                child: AnswerCalc(),
              ),
              Expanded(
                child: Container(
                  alignment: Alignment.bottomRight,
                  child: MainCalc(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}