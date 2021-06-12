class User < ActiveRecord::Base
    # Coaches & Teachers are both users?
    has_secure_password
    validates :username, presence: true, uniqueness: true
    validates :password, presence: true
    validates :name, presence: true

    has_many :created_notes, foreign_key: :creator_id, class_name: 'Note'
    has_many :notes_about_teachers, foreign_key: :target_id, class_name: 'Note'
    has_many :levels, through: :notes_about_teachers
end