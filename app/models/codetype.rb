class Codetype < ActiveRecord::Base
  has_many :gists
  has_many :matomes
end
