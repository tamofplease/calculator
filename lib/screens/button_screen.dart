import 'package:calculator/widgets/button.dart';
import 'package:calculator/widgets/button_column.dart';
import 'package:calculator/widgets/button_row.dart';
import 'package:calculator/widgets/buttons/calc_button.dart';
import 'package:calculator/widgets/buttons/numeric_button.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class ButtonScreen extends StatelessWidget {

  Widget _buildFirstRow() {
    return ButtonRow(
      child1: CalcButton(CalcType.Mod),
      child2: CalcButton(CalcType.Product),
      child3: CalcButton(CalcType.Sqrt),
      child4: CalcButton(CalcType.Clear),
    );
  }
  Widget _buildSecondRow() {
    return ButtonRow(
      child1: NumericButton(7),
      child2: NumericButton(8),
      child3: NumericButton(9),
      child4: CalcButton(CalcType.Div),
    );
  }
  Widget _buildThirdRow() {
    return ButtonRow(
      child1: NumericButton(4),
      child2: NumericButton(5),
      child3: NumericButton(6),
      child4: CalcButton(CalcType.Mul),
    );
  }
  Widget _buildFourthRow() {
    return ButtonRow(
      child1: NumericButton(1),
      child2: NumericButton(2),
      child3: NumericButton(3),
      child4: CalcButton(CalcType.Sub),
    );
  }

  Widget _buildFifthRow() {
    return ButtonRow(
      child1: NumericButton(0),
      child2: CalcButton(CalcType.Dod),
      child3: CalcButton(CalcType.Equal),
      child4: CalcButton(CalcType.Add),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ButtonColumn(
        child1: _buildFirstRow(),
        child2: _buildSecondRow(),
        child3: _buildThirdRow(),
        child4: _buildFourthRow(),
        child5: _buildFifthRow(),
      ),
    );
  }
}


enum CalcType{
  Add,Sub,Mul,Div,Equal,Mod,Product,Sqrt,Clear, Dod, Initial
}