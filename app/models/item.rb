class Item < ActiveRecord::Base
  validates_numericality_of :price, :greater_than => 0.50, :less_than => 20
  validates_numericality_of :count, :greater_than => 0, :less_than => 20
end
