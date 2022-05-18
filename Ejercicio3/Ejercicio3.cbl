      ******************************************************************
      *Basado en los 2 ejercicios anteriores, hacer un programa para
      * Ingresar por teclado la
      *longitud de los tres lados de un triángulo y luego listar que
      *tipo de triángulo es:
      *- Equilátero: si los tres lados son iguales
      *- Isósceles: si dos de los tres lados son iguales
      *- Escaleno: si los tres lados son distintos entre sí
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. Ejercicio3.

       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  LONG1 pic 9(4)v9(2).
       01  LONG2 pic 9(4)v9(2).
       01  LONG3 pic 9(4)v9(2).

       PROCEDURE DIVISION.

           PERFORM INGRESAR-DATOS.
           PERFORM CALCULAR.

               INGRESAR-DATOS.
               DISPLAY "Ingrese la longitud del primer lado:".
               ACCEPT LONG1.
               DISPLAY "Ingrese la longitud del segundo lado:".
               ACCEPT LONG2.
               DISPLAY "Ingrese la longitud del tercer lado:".
               ACCEPT LONG3.

               EQUILATERO.
                   DISPLAY "El triangulo es Equilatero".
                   STOP RUN.

               ISOSELES.
                   DISPLAY "El triangulo es Isoseles".
                   STOP RUN.

               ESCALENO.
                   DISPLAY "El triangulo es Escaleno".
                   STOP RUN.

               CALCULAR.
                   if LONG1 = LONG2 and LONG2 = LONG3
                       PERFORM EQUILATERO

                           ELSE
                           if LONG1 <> LONG2 and LONG2 <> LONG3
                               PERFORM ISOSELES

                               ELSE
                               PERFORM ESCALENO

                           END-IF
                   END-IF.

       END PROGRAM Ejercicio3.
