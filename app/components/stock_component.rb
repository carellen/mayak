class StockComponent < ViewComponent::Base
  def initialize(latest:)
    @latest = latest
  end
end
