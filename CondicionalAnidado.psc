Algoritmo CondicionalAnidado
  Definir x, y Como Entero;
  Definir resultado Como Caracter;

  
  x = 10;

  Si (x < 5) Entonces
      resultado = "x es menor que 5";
  SiNo
    Si (x < 10) Entonces
      resultado = "x es menor que 10";
    SiNo
      resultado = "x es mayor o igual a 10";
    FinSi
  FinSi
FinAlgoritmo