class Item < ActiveRecord::Base
  validates_uniqueness_of :serial
end
