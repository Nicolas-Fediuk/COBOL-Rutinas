      ******************************************************************
      * Hacer un programa que permita ingresar un nombre, apellido
      *y edad de una persona y mostrarlo por consola
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. Ejercicio2.

       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  NOMBRE pic x(15).
       01  APELLIDO pic x(20).
       01  EDAD pic 9(3).
       PROCEDURE DIVISION.

           SALUDAR.

               SALUDAR.
                   PERFORM INGRESAR-NOMBRE thru INGRESAR-APELLIDO.
                   PERFORM INGRESAR-EDAD.
                   PERFORM MOSTRAR-DATOS.

                   INGRESAR-NOMBRE.
                       DISPLAY "Ingrese su nombre".
                       ACCEPT NOMBRE.

                   INGRESAR-APELLIDO.
                       DISPLAY "Ingrese su apellido".
                       ACCEPT APELLIDO.

                   MOSTRAR-DATOS.
                       DISPLAY "Nombre: "NOMBRE "Apellido: "APELLIDO
                       "Edad: "EDAD.
                       STOP RUN.

                   INGRESAR-EDAD.
                       DISPLAY "Ingrese su edad".
                       ACCEPT EDAD.

       END PROGRAM Ejercicio2.
