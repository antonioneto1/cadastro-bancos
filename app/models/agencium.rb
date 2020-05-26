class Agencium < ApplicationRecord
  belongs_to :bank, :optional => true
end
