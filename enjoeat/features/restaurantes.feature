#language: pt

Funcionalidade: Restaurantes
  Para que eu possa saber quais os restaurantes disponíveis com o tempo de entrega e nota de avaliação
  Sendo um usuário que deseja pedir comida
  Posso acessar a lista de restaurantes

    @temp
    Cenario: Restaurantes disponíveis

        # Essa abordagem é diferente do esquema de cenário, onde aqui trabalhamos diretamente com a Tabela
        # simulando um único acesso do usuário ao navegador.
        # O esquema de cenário, pode utilizado quando simulamos diversas consultas ao navegador, por exemplo:
        # Em um cadastro de produtos ou usuários.
        
        Dado que temos os seguintes resutaurantes
        | nome          | categoria  | entrega    | avaliacao |
        | Bread & Bakery| Padaria    | 25 minutos | 4.9       |
        | Burger House  | Hamburgers | 30 minutos | 3.5       |
        | Coffee Corner | Cafeteria  | 20 minutos | 4.8       |

        Quando acesso a lista de restaurantes
        Então devo ver todos os restaurantes dessa lista

        # Aqui a baixo temos um exemplod de como utilizamos o Esquema do Cenario

        # Exemplo de Esquema de cenário.

        # Esquema do Cenario: Restaurantes disponíveis

        # Quando acesso a lista de restaurantes
        # Então cada restaurante deve ter <id> <nome> <categoria> <entrga> <avaliacao>

        # Exemplos:

        # | nome             | categoria    | entrega      | avaliacao |
        # | "Bread" & Bakery"| "Padaria"    | "25 minutos" | 4.9       |
        # | "Burger House  " |"Hamburgers"  | "30 minutos" | 3.5       |
        # | "Coffee Corner " | "Cafeteria"  | "20 minutos" | 4.8       |



  