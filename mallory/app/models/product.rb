class Product < ActiveRecord::Base

  include PgSearch
  pg_search_scope :search_errthing, :against => [:category, :item, :description]
end
