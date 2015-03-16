class Business < ActiveRecord::Base
  validates :name, :address, :website, :phone, :presence => true
  belongs_to :section
end
