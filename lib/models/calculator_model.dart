import 'package:calculator/screens/button_screen.dart';


class CalculatorModel {
  const CalculatorModel({this.input, this.answer, this.showString,this.currentType, this.currentDigit});
  final List<dynamic> input;//入力を順番に保持する。=が押されたら、計算してスタック。
  final double answer;//計算結果の出力
  final String showString; //計算途中の出力
  final CalcType currentType; //現在計算しないといけない値を保持する。
  final double currentDigit; //参照中の桁をみる。
}