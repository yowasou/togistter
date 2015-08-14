class Gist < ActiveRecord::Base
  validates :matome_id,  presence: true
  #belongs_to :matome
  #belongs_to :user
  belongs_to :codetype
end
