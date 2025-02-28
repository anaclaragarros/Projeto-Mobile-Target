/// Desafio 5///
///
/// 5) Dois veículos, um carro e um caminhão, saem respectivamente de cidades opostas pela mesma rodovia. O carro, de Ribeirão Preto em direção a Barretos, a uma velocidade constante de 90 km/h, e o caminhão, de Barretos em direção a Ribeirão Preto, a uma velocidade constante de 80 km/h. Quando eles se cruzarem no percurso, qual estará mais próximo da cidade de Ribeirão Preto?
//
// a) Considerar a distância de 125km entre a cidade de Ribeirão Preto <-> Barretos.
// b) Considerar 3 pedágios como obstáculo e que o carro leva 5 minutos a mais para passar em cada um deles, pois ele não possui dispositivo de cobrança de pedágio.
// c)Explique como chegou no resultado.//

void main() {

  double distanciaTotal = 125; // distância entre Ribeirão Preto e Barretos (km)
  double velocidadeCarro = 90; // velocidade do carro (km/h)
  double velocidadeCaminhao = 80; // velocidade do caminhão (km/h)
  double tempoPedagioCaminhao = 0; // caminhão não perde tempo nos pedágios
  double tempoPedagioCarro = 5 / 60; // carro perde 5 minutos (0.083 horas) em cada pedágio
  int numeroPedagios = 3; // quantidade de pedágios

  double tempoPerdidoCarro = numeroPedagios * tempoPedagioCarro;

  double tempoCarroSemParar = distanciaTotal / velocidadeCarro; // tempo sem considerar pedágios
  double tempoCarroComPedagio = tempoCarroSemParar + tempoPerdidoCarro; // tempo real do carro

  double tempoAteCruzarem = distanciaTotal / (velocidadeCarro + velocidadeCaminhao);

  double distanciaCarro = velocidadeCarro * tempoAteCruzarem;

  double distanciaCaminhao = distanciaTotal - distanciaCarro;

  if (distanciaCarro < distanciaCaminhao) {
    print("O carro estará mais próximo de Ribeirão Preto.");
  } else {
    print("O caminhão estará mais próximo de Ribeirão Preto.");
  }
}
