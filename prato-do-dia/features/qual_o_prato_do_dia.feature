#language:pt

Funcionalidade: Qual o prato do dia
    Queremos saber qual o prato do dia na capital Paulista

        Esquema do Cenário: Prato do dia

            Dado que hoje é <dia>
            Quando eu perguntar qual é o prato do dia
            Então a resposta deve ser <resposta>

            Exemplos: 
            | dia             | resposta           |
            | "segunda-feira" | "Virado a Paulista"|
            | "terça-feira"   | "Dobradinha"       |
            | "quarta-feira"  | "Feijoada"         |
            | "quinta-feira"  | "Macarronada"      |
            | "sexta-feira"   | "Filé de Merluza"  |
            
