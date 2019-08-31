#language:pt

Funcionalidade: Qual o prato do dia
    Queremos saber qual o prato do dia na capital Paulista

    Cenario: hoje é dia de Virado a Paulista

        Dado que hoje é segunda-feira
        Quando eu perguntar qual é o prato do dia
        Então a resposta deve ser "Virado a Paulista"

