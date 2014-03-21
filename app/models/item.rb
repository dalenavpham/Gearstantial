class Item < ActiveRecord::Base
  validates_uniqueness_of :serial
  validates :name, presence: true #requires a name so that user gets a link to it when done
end
