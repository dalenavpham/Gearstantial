class Item < ActiveRecord::Base
  validates_uniqueness_of :serial
  validates :name, presence: true
end
