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
    @sucesso_pedido.pedido_confirmado
end

Então('deve ser informado um prazo de entrega de {string}') do |tempo|
    @sucesso_pedido.tempo_entrega(tempo)
  end