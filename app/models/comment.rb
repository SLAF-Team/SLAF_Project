# frozen_string_literal: true

class Comment < ApplicationRecord
  belongs_to :idiom
  belongs_to :user

  validates :body, presence: true, length: { minmum: 2, maximum: 100 }
  validates :user, presence: true
  validates :idiom, presence: true
end
