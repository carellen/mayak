class StockService

  class << self

    def latest
      latest = WildberryApiService.new(path: '/stocks', params: { dateFrom: Date.today.iso8601 }).fetch.body
      data = process latest
      Stock.create(data)
    end

    private

    def process(stock)
      JSON.parse(stock).each_with_object({}) do |product, obj|
        price = product['Price']
        Stock::JSON_API_SCHEMA.each do |key, value|
          sum_key = key.to_s.gsub('amount', 'sum').to_sym
          amount = product[value]
          obj[key] ||= 0
          obj[sum_key] ||= 0
          obj[key] += amount
          obj[sum_key] += price * amount
        end
      end
    end
  end
end