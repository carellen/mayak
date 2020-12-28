class StockUploadJob < ApplicationJob
  retry_on Exception, wait: ->(executions) { executions * 2 }

  def perform
    StockService.latest
  end
end