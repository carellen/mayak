require 'test_helper'
require 'view_component/test_case'

class StockComponentTest < ViewComponent::TestCase
  test 'can render stock' do
    render_inline(StockComponent.new(latest: stocks(:latest)))

    assert_selector('tr', text: '3 шт. /300 р.на складе')
    assert_selector('tr', text: '2 шт. /200 р.едет к клиенту')
    assert_selector('tr', text: '1 шт. /- 100 р.едет от клиента')
  end
end