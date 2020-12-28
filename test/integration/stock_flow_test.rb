require 'test_helper'

class StockFlowTest < ActionDispatch::IntegrationTest
  test 'can process stock from response' do
    stub_request(:get, /stocks/).to_return(
      body: YAML::load_file('test/integration/stock_raw.yml')[:stock_raw],
      status: 200,
      headers: {}
    )

    latest = StockService.latest

    assert_equal(5, latest.total_amount)
    assert_equal(800, latest.total_sum)
    assert_equal(3, latest.to_client_amount)
    assert_equal(500, latest.to_client_sum)
    assert_equal(2, latest.from_client_amount)
    assert_equal(300, latest.from_client_sum)
  end
end
