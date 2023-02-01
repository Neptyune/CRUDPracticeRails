class Dogdate < ApplicationRecord
  belongs_to :account
  belongs_to :dogs
end
