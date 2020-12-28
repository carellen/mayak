module Stocks
  class LatestsController < ApplicationController
    def show
      @latest = Stock.last
    end
  end
end