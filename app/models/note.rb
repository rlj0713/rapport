class Note < ActiveRecord::Base
    belongs_to :level
    belongs_to :category
    belongs_to :creator, foreign_key: :creator_id, class_name: 'User'
    belongs_to :target, foreign_key: :target_id, class_name: 'User'


    validates :content, presence: true
end