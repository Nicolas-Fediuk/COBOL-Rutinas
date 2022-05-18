      ******************************************************************
      *Hacer un programa para ingresar por teclado el importe de una venta y el porcentaje de
      *descuento aplicada a la misma y luego informar por pantalla el importa a pagar.
      *Ejemplo 1. Si el importe de la venta es $ 1.200 y el descuento es el 15% entonces el total a
      *pagar será de $ 1.020.
      *Ejemplo 2. Si el importe de la venta es $ 800 y el descuento es el 0% entonces el total a pagar
      *será de $ 800.
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. Ejercicio1.

       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  MONTO pic 9(6).
       01  DESCUENTO pic 9(2).
       01  DESCUENTO-TOTAL pic 9(6).
       01  TOTAL pic 9(6)v9(2).

       PROCEDURE DIVISION.

           DISPLAY "Ingrese el monto".
           ACCEPT MONTO.
           DISPLAY "Ingrese el descuento"
           ACCEPT DESCUENTO.

           PERFORM CALCULO.
           PERFORM MOSTRAR-TOTAL.

           CALCULO.
                COMPUTE DESCUENTO-TOTAL = (MONTO * DESCUENTO)
                / 100.
                COMPUTE TOTAL = MONTO - DESCUENTO-TOTAL.

           MOSTRAR-TOTAL.
               DISPLAY "Total a pagar: "TOTAL.
               STOP RUN.

       END PROGRAM Ejercicio1.
