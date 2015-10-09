require 'csv'

desc "Import all the items"
task :import => :environment do

  CSV.foreach("data-import/mf_inventory.csv", headers: true) do |row|
    Product.create row.to_hash
  end

end
