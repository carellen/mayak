class Stock < ApplicationRecord
  JSON_API_SCHEMA = {
    total_amount: 'quantityFull',
    to_client_amount: 'inWayToClient',
    from_client_amount: 'inWayFromClient'
  }

  after_create_commit -> {
    broadcast_replace_to 'latest', content: StocksController.render(StockComponent.new(latest: self))
  }

  def to_key
    ['latest']
  end
end
