class AddResponsesCountToIdioms < ActiveRecord::Migration[5.2]
  def change
    add_column :idioms, :likes_count, :integer
  end
end
