class Matome < ActiveRecord::Base
  has_many :gists
  has_one :codetype
end
