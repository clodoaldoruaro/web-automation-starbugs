#language: pt

Funcionalidade: Pedidos

    Como um usuário do site Starbugs, eu quero poder efetuar a compra de cafés
    Para que eu possa receber os produtos em meu endereço e efetuar o pagamento na entrega

Cenário: Compra bem sucedida

    Dado que estou na página principal da Starbugs
    E que inicio a compra do "Expresso Tradicional"
    Quando busco pelo CEP: "05334000"
    E informo os dados de endereço:
        | Numero      | 175      |
        | Complemento | Apto 301 |
    E escolho a forma de pagamento "Cartão de Débito"
    E finalizo a compra
    Então sou direcionado para a página de confirmação de pedidos
    E deve ser informado um prazo de entrega de 20 à 30 minutos