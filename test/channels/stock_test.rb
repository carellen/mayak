require 'test_helper'

class StockTest < ActionCable::TestCase
  test 'broadcast template after create' do
    assert_broadcasts('latest', 1) do
      Stock.create
    end
  end
end