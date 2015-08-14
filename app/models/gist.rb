class Gist < ActiveRecord::Base
  belongs_to :matome
  belongs_to :user
  belongs_to :codetype
end
