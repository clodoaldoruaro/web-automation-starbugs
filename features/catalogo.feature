#language: pt

Funcionalidade: Catálogo de cafés
    Como um usuário eu quero ver o catálogo de cafés na página principal
    Para que eu possa escolher e saber mais sobre os produtos disponíveis

Cenário: Acessar catálogo de cafés na página principal

    Quando acesso a página principal na Starbugs
    Então eu devo ver uma lista de cafés disponíveis

Cenário: Iniciar compra de um café

    Dado que estou na página principal da Starbugs
    E que desejo comprar o seguinte produto:
    | nome    | Expresso Gelado |
    | valor   | R$ 9,99         |
    | entrega | R$ 10,00        |
    Quando inicio a compra desse item
    Então devo ver a página de checkout com os detalhes do produto
    E o valor total da compra deve ser de "R$ 19,99"

Cenário: Café indisponível

    Dado que estou na página principal da Starbugs
    E que desejo comprar o seguinte produto:
    | nome    | Expresso Cremoso |
    Quando inicio a compra desse item
    Então devo ver a mensagem "Produto indisponível"