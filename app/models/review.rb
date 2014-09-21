class Review < ActiveRecord::Base
  belongs_to :restaurant

  validates :rating, :body, :restaurant_id, presence: true
end
