

class HomePage

    include Capybara::DSL

    def open
        visit'https://starbugs.vercel.app/'
    end

    def lista_cafes
        return all('.coffee-item')
    end

    def comprar(nome_produto)
        produto = find('.coffee-item', text: nome_produto)
        produto.find('.buy-coffee').click
    end

end