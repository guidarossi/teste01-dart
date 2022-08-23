import 'dart:io';

void main() {
  print("Digite um numero inteiro");

  try {
    var num = int.parse(stdin.readLineSync()!);

    if (num.runtimeType == int) {
      var result = 0;

      for (int i = 0; i < num; i++) {
        if (i % 3 == 0 || i % 5 == 0) {
          result += i;
        }
      }
      print("Resultado: " + result.toString());
    }
  } on FormatException {
    print("Valor invalido!");
  }
  print("Encerrando programa..");
}
