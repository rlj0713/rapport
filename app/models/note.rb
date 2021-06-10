class Note < ActiveRecord::Base
    # Write custom validation to require one or both

    belongs_to :level
    belongs_to :creator, foreign_key: :creator_id, class_name: 'User'
    belongs_to :target, foreign_key: :target_id, class_name: 'User'
end