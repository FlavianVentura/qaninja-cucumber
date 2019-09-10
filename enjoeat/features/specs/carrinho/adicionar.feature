#language: pt

Funcionalidade: Adicionar ao carrinho
    Para que eu possa finalizar a compra
    Sendo um cliente que ja decidiu o que vai comrar
    Posso adiconar itens ao meu carrinho

    Cenario: Adicionar 1 item

        Dado que o produto desejado é "Cup Cake"
        E o vlaor do produto é de "R$ 8,70"
        Quando eu adicionar 1 unidade
        Então 1 unidade deste produto deve ser adicionada ao carrinho
        E o valor total é de "R$ 9,70"

    Cenario: Adicionar 2 itens

        Dado que o produto desejado é "Donut"
        E o vlaor do produto é de "R$ 2,50"
        Quando eu adicionar 2 unidade
        Então 2 unidade deste produto deve ser adicionada ao carrinho
        E o valor total é de "R$ 5,00"

    Cenario: Adcionar vários itens

        Dado que os produtos desejados são:
            | nome                   | preco    |
            | Cup Cake               | R$ 8,70  |
            | Donut | R$ 2,50        | R$ 2,50  |
            | Pão Artesanal Italiano | R$ 15,90 |
        Quando eu adicionar todos os itens
        Então vejo todos os itens no carrinho
        E o valor total deve ser de "R$ 27,10"
        