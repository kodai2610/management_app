class Post < ApplicationRecord
  belongs_to :user
  default_scope -> { order(created_at: :desc) }
  validates :user_id, presence: true
  validates :date, presence: true
  validates :grade, presence: true
  validates :subject, presence: true
  validates :today, presence: true, length: { maximum: 140}
  validates :hw, presence: true, length: { maximum: 140}
  validates :next, presence: true, length: { maximum: 140}
  validates :classify, presence: true, length: { maximum: 140}
end
