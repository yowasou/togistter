class Matome < ActiveRecord::Base
  has_many :gists
  belongs_to :codetype
end
