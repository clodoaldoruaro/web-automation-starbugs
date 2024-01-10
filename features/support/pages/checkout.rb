require 'rspec'

class CheckoutPage
    include Capybara::DSL
    include RSpec::Matchers 

    def valida_detalhes_produto(produto)
        titulo_produto = find('.item-details h1')
        expect(titulo_produto.text).to eql produto[:nome]
    
        sub_total = find('.subtotal .sub-price')
        expect(sub_total.text).to eql produto[:valor]
    
        valor_entrega = find('.delivery .delivery-price')
        expect(valor_entrega.text).to eql produto[:entrega]
    end

    def valida_valor_total(valor_total)
        total = find('.total-price')
        expect(total.text).to eql valor_total
    end

    def informa_cep(cep)
        find('input[name=cep]').set(cep)
        click_on 'Buscar CEP'
    end

    def informa_endereco(endereco)
        find('input[name=number]').set(endereco[:Numero])
        find('input[name=complement]').set(endereco[:Complemento])
    end

    def informar_forma_pagamento(forma_pagamento)
        find('label div', text: forma_pagamento.upcase).click
    end

    def confirma_pedido
        click_on 'Confirmar pedido'
    end

end