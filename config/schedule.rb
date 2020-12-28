every 1.hour do
  rake 'stock:latest', output: 'log/stock.log'
end
