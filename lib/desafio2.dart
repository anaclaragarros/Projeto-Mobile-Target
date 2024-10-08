/// Segunda questão//
/// Descubra a lógica e complete o próximo elemento:
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
// f) 2,10, 12, 16, 17, 18, 19, ____///

void main() {

  List<int> sequenceA = [1, 3, 5, 7];
  int nextA = sequenceA.last + 2;

  List<int> sequenceB = [2, 4, 8, 16, 32, 64];
  int nextB = sequenceB.last * 2;


  List<int> sequenceC = [0, 1, 4, 9, 16, 25, 36];
  int nextC = (int.parse((sequenceC.length).toString()) - 1) *
      (int.parse((sequenceC.length).toString()) - 1);


  List<int> sequenceD = [4, 16, 36, 64];
  int nextD = 100; // This is the next perfect square (10^2)


  List<int> sequenceE = [1, 1, 2, 3, 5, 8];
  int nextE = sequenceE[sequenceE.length - 1] + sequenceE[sequenceE.length - 2];

  List<int> sequenceF = [2, 10, 12, 16, 17, 18, 19];
  int nextF = 20; // After 19, the next integer is 20

  print('Next element in A: $nextA');
  print('Next element in B: $nextB');
  print('Next element in C: $nextC');
  print('Next element in D: $nextD');
  print('Next element in E: $nextE');
  print('Next element in F: $nextF');
}