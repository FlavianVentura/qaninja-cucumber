#language: pt

Funcionalidade: Informações Adicionais

    @infos
    Cenario: Detalhes do restaurante

     Dado que que acesso a lista de restaurantes
     Quando eu escolho o restaurante "Burger House"
     Então eu vejo as seguintes informacoes Adicionais
        | Categoria | Hamburgers                               |
        | Descricao | 40 anos se especializando em trash food. |
        | Horarios  | Funciona todos os dias, de 10h às 22h    |