class User < ActiveRecord::Base
    has_secure_password
    validates :email, presence: true, uniqueness: true
    validates :username, presence: true
    validates :password_digest, presence: true
    validates :name, presence: true

    has_many :created_notes, foreign_key: :creator_id, class_name: 'Note'
    has_many :notes_about_teachers, foreign_key: :target_id, class_name: 'Note'
    has_many :levels, through: :notes_about_teachers
    has_many :categories, through: :notes_about_teachers
    belongs_to :school
end