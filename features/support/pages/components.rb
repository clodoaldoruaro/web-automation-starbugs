require 'rspec'

class Message 
    include Capybara::DSL
    include RSpec::Matchers 

    def valida_texto(texto)
        mensagem = find('.swal2-html-container')
        expect(mensagem.text).to eql texto
    end
end