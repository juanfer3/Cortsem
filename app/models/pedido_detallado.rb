class PedidoDetallado < ApplicationRecord
  belongs_to :pedido
  belongs_to :tela
end
