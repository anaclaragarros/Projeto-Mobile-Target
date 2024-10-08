///Desafio 1///
/// 1) Observe o trecho de código:
//
// 1) Observe o trecho de código:
//
// int INDICE = 12, SOMA = 0, K = 1;
//
// enquanto K < INDICE faça
//
// { K = K + 1; SOMA = SOMA + K;}
//
// imprimir(SOMA);
//
//
// Ao final do processamento, qual será o valor da variável SOMA?
//
//
// 2) Descubra a lógica e complete o próximo elemento:
//
// a) 1, 3, 5, 7, ___
//
// b) 2, 4, 8, 16, 32, 64, ____
//
// c) 0, 1, 4, 9, 16, 25, 36, ____
//
// d) 4, 16, 36, 64, ____
//
// e) 1, 1, 2, 3, 5, 8, ____
//
// f) 2,10, 12, 16, 17, 18, 19, ____
//
// imprimir(SOMA);//

/// RESPOSTA//

void main() {
  int indice = 12;
  int soma = 0;
  int k = 1;

  while (k < indice) {
    k = k + 1;
    soma = soma + k;
  }

  print(soma);
}

