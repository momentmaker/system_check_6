class Restaurant < ActiveRecord::Base
  has_many :reviews

  validates :name, :address, :city, :state, :zipcode, presence: true
end
