#language: pt

@bread_bakery
Funcionalidade: Adicionar ao carrinho
    Para que eu possa finalizar a compra
    Sendo um cliente que ja decidiu o que vai comrar
    Posso adiconar itens ao meu carrinho

    Cenario: Adicionar 1 item

        Dado que o produto desejado é "Cup Cake"
        E o valor do produto é de "R$ 8,70"
        Quando eu adiciono 1 unidade(s)
        Então deve ser adicionado 1 unidade deste item
        E o valor total deve ser de "R$ 8,70"

    Cenario: Adicionar 2 itens

        Dado que o produto desejado é "Donut"
        E o valor do produto é de "R$ 2,50"
        Quando eu adiciono 2 unidade(s)
        Então deve ser adicionado 2 unidade(s) deste item
        E o valor total deve ser de "R$ 5,00"

    Cenario: Adcionar vários itens

        Dado que os produtos desejados são:
            | nome                   | preco    | quantidade |
            | Cup Cake               | R$ 8,70  | 1          |
            | Donut                  | R$ 2,50  | 2          |
            | Pão Artesanal Italiano | R$ 15,90 | 1          |
        Quando eu adicionar todos os itens
        Então vejo todos os itens no carrinho
        E o valor total deve ser de "R$ 29,60"
        