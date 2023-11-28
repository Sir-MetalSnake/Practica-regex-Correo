%{
#include <stdio.h>
%}

%%

^[a-zA-Z0-9_]+([.][a-zA-Z0-9_]+)*@(uas\.edu\.mx|hotmail\.com|gmail\.com|xyz\.?([a-zA-Z0-9_])*\.mx)$   { printf("La cadena coincide con el patrón 'Del correo'\n"); return 1; }
.          { /* Ignorar otros caracteres */ }

%%

int main() {
    yylex(); // Inicia el análisis léxico
    return 0;
}