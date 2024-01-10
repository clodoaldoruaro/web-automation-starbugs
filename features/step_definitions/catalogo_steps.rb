Quando('acesso a página principal na Starbugs') do
    @home.open
end
  
Então('eu devo ver uma lista de cafés disponíveis') do
    expect(@home.lista_cafes.size).to be > 0
end

Dado('que estou na página principal da Starbugs') do
    @home.open
end
  
Dado('que desejo comprar o seguinte produto:') do |table|
    @produto = table.rows_hash
end
  
Quando('inicio a compra desse item') do
    @home.comprar(@produto[:nome])
end
  
Então('devo ver a página de checkout com os detalhes do produto') do
    @checkout.valida_detalhes_produto(@produto)
end
  
Então('o valor total da compra deve ser de {string}') do |valor_total|
    @checkout.valida_valor_total(valor_total)
end

Então('devo ver a mensagem {string}') do |texto|
    @message.valida_texto(texto)
end