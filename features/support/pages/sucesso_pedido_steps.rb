require 'rspec'

class SucessoPedidoPage
    include Capybara::DSL
    include RSpec::Matchers

    def pedido_confirmado
        expect(find('h1').text).to eql 'Uhull! Pedido confirmado'
        expect(find('p[color=subtitle]').text).to eql 'Agora é só aguardar que logo o café chegará até você'
    end

    def tempo_entrega(tempo)
        tempo_entrega = find('p', text:'Previsão de entrega')
        expect(tempo_entrega.find('strong').text).to eql tempo
    end
end