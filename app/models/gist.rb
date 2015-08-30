class Gist < ActiveRecord::Base
  validates :matome_id,  presence: true
  belongs_to :matome
  has_one :user
  belongs_to :codetype
end
