class Result < ApplicationRecord
    validates_uniqueness_of :n
    validates_presence_of :n, :arr
end
