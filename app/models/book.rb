# frozen_string_literal: true

class Book < ApplicationRecord
  validates :title, presence: true
  validates :release_date, presence: true

  belongs_to :author
  has_many :comments, as: :commentable, dependent: :destroy
end
