#language: pt

Funcionalidade: Cardapio

    @cardapio
    Cenario: Produto

        Dado que que acesso a lista de restaurantes
        Quando eu escolho o restaurante "Burger House"
        Então vejo os seguintes itens disponiveis no cardapio
            | produto | descricao | preco |
            | Classic Burger | O clássico. Não tem como errar.| R$ 18,50 |
            | Batatas Fritas | Batatas fritas crocantes | R$ 5,50 |
            | Refrigerante | O refri mais gelado da cidade. | R$ 4,50 |