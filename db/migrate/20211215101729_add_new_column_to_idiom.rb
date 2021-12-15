class AddNewColumnToIdiom < ActiveRecord::Migration[5.2]
  def change
    add_column :idioms, :example_fr, :text
    add_column :idioms, :example_en, :text
    remove_column :idioms, :example
  end
end
