namespace :stock do
  desc 'Fetch latest stock info'
  task latest: :environment do
    StockUploadJob.perform_later
  end
end