require_relative './pages/home.rb'
require_relative './pages/checkout.rb'
require_relative './pages/components.rb'
require_relative './pages/sucesso_pedido_steps.rb'

Before do
    @home = HomePage.new
    @checkout = CheckoutPage.new
    @message = MessagePage.new
    @sucesso_pedido = SucessoPedidoPage.new
end