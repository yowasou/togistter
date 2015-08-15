class Gist < ActiveRecord::Base
  validates :matome_id,  presence: true
  has_one :matome
  has_one :user
  belongs_to :codetype
end
