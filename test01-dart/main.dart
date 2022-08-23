import 'dart:io';

void main() {
  print("Digite um numero inteiro");
  verificaEntrada(stdin.readLineSync()!);
  print("Encerrando programa..");
}

void verificaEntrada(String num) {
  try {
    int convert = int.parse(num);
    operacao(convert);
  } on FormatException {
    print("Valor invalido!");
  }
}

void operacao(int valor) {
  if (valor.runtimeType == int) {
    var result = 0;

    for (int i = 0; i < valor; i++) {
      if (i % 3 == 0 || i % 5 == 0) {
        result += i;
      }
    }
    print("Resultado: " + result.toString());
  }
}
