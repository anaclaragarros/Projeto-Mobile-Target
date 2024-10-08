/// desafio 3//
/// Dado um vetor que guarda o valor de faturamento diário de uma distribuidora de todos os dias de um ano, faça um programa, na linguagem que desejar, que calcule e retorne:
//
// - O menor valor de faturamento ocorrido em um dia do ano;
// - O maior valor de faturamento ocorrido em um dia do ano;
// - Número de dias no ano em que o valor de faturamento diário foi superior à média anual.
//
// a) Considerar o vetor já carregado com as informações de valor de faturamento.
//
// b) Podem existir dias sem faturamento, como nos finais de semana e feriados. Estes dias devem ser ignorados no cálculo da média.
//
// c) Utilize o algoritmo mais veloz que puder definir.//

void main() {

  List<double?> faturamentoDiario = [
    100.0, 200.0, null, 150.0, null, 300.0, 250.0, // Exemplo de 7 dias
  ];

  var results = calcularFaturamento(faturamentoDiario);

  print('Menor valor de faturamento: ${results[0]}');
  print('Maior valor de faturamento: ${results[1]}');
  print('Número de dias com faturamento acima da média: ${results[2]}');
}

List<dynamic> calcularFaturamento(List<double?> faturamento) {
  double menor = double.infinity;
  double maior = double.negativeInfinity;
  double somaFaturamento = 0;
  int diasComFaturamento = 0;

  for (var valor in faturamento) {
    if (valor != null) {
      if (valor < menor) {
        menor = valor;
      }
      if (valor > maior) {
        maior = valor;
      }
      somaFaturamento += valor;
      diasComFaturamento++;
    }
  }

  double mediaAnual = diasComFaturamento > 0 ? somaFaturamento / diasComFaturamento : 0;

  int diasAcimaDaMedia = 0;
  for (var valor in faturamento) {
    if (valor != null && valor > mediaAnual) {
      diasAcimaDaMedia++;
    }
  }
  return [menor != double.infinity ? menor : null, maior != double.negativeInfinity ? maior : null, diasAcimaDaMedia];
}