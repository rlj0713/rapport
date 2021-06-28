class Level < ActiveRecord::Base
    validates :value, numericality: { less_than_or_equal: 10 }

    has_many :notes
    # Adds many-to-many relationship
    has_many :users, through: :notes, source: :creator
    has_many :targets, through: :notes, source: :target
end