require 'test_helper'

class StockUploadJobTest < ActiveJob::TestCase
  test 'that stock is created' do
    stub_request(:get, /stocks/).to_return(body: '[]', status: 200, headers: {})

    size = Stock.count
    StockUploadJob.perform_now
    assert_equal(size + 1, Stock.count)
  end
end