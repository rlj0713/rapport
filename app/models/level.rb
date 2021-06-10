class Level < ActiveRecord::Base
    validates :value, numericality: { less_than_or_equal: 10 }

    has_many :notes
end