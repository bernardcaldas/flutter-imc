import 'package:flutter_masked_text/flutter_masked_text.dart';

class ImcBloc{
  var heightCtrl = new MaskedTextController(mask: '000');
  var weightCtrl = new MaskedTextController(mask: '000');
  var result = "Preencha seus dados para calcular o IMC";

  calculate(){
    double weight = double.parse(weightCtrl.text);
    double height = double.parse(heightCtrl.text) / 100;
    double imc    = weight / (height * height);

    if (imc < 18.6) {
      result = "Abaixo do peso (${imc.toStringAsPrecision(2)})";
    } else if (imc >= 18.6 && imc <= 24.9) {
      result = "peso ideal (${imc.toStringAsPrecision(2)})";
    } else if (imc >= 24.9 && imc <= 29.9) {
      result = "Levemente acima do peso (${imc.toStringAsPrecision(2)})";
    } else if (imc >= 29.9 && imc <= 34.9) {
      result = "Obesidade grau 1 (${imc.toStringAsPrecision(2)})";
    } else if (imc >= 34.9 && imc <= 39.9) {
      result = "Obesidade grau 2 (${imc.toStringAsPrecision(2)})";
    } else if (imc >= 40) {
      result = "Obesidade grau 3 (${imc.toStringAsPrecision(2)})";
    }
  }

}