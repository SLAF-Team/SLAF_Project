# frozen_string_literal: true

class Unlike < ApplicationRecord
  belongs_to :idiom
  belongs_to :user
end
