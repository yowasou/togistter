class Gist < ActiveRecord::Base
  validates :matome_id,  presence: true
  has_one :matome
  has_one :user
  has_one :codetype
end
