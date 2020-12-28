class WildberryApiService
  include HTTParty

  base_uri 'https://suppliers-stats.wildberries.ru/api/v1/supplier'
  default_params key: ENV['WILDBERRY_API_TOKEN']
  query_string_normalizer proc { |query|
    query.map do |key, value|
      "#{key}=#{value}"
    end.join('&')
  }
  # debug_output $stderr

  def initialize(path: nil, params: {})
    @path = path
    @params = params
  end

  def fetch
    self.class.get(path, query: params)
  end

  private

  attr_accessor :path, :params

end