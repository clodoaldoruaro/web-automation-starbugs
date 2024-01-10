Dado('que inicio a compra do {string}') do |produto_nome|
    @home.comprar(produto_nome)
end

Quando('busco pelo CEP: {string}') do |cep|
    @checkout.informa_cep(cep)
end

Quando('informo os dados de endereço:') do |table|
    @checkout.informa_endereco(table.rows_hash)
end

Quando('escolho a forma de pagamento {string}') do |forma_pagamento|
    @checkout.informar_forma_pagamento(forma_pagamento)
end

Quando('finalizo a compra') do
    @checkout.confirma_pedido
end

Então('sou direcionado para a página de confirmação de pedidos') do
    pending # Write code here that turns the phrase above into concrete actions
end

Então('deve ser informado um prazo de entrega de {int} à {int} minutos') do |int, int2|
    # Então('deve ser informado um prazo de entrega de {int} à {float} minutos') do |int, float|
    # Então('deve ser informado um prazo de entrega de {float} à {int} minutos') do |float, int|
    # Então('deve ser informado um prazo de entrega de {float} à {float} minutos') do |float, float2|
    pending # Write code here that turns the phrase above into concrete actions
end