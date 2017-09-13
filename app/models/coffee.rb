class Coffee < ApplicationRecord
  belongs_to :user
  validates_presence_of :caffeine, :amount, :brew, :ice
end
