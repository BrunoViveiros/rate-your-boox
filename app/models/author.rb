# frozen_string_literal: true

class Author < ApplicationRecord
  validates :name, presence: true

  has_many :books, dependent: :destroy
  has_many :comments, as: :commentable, dependent: :destroy
end
