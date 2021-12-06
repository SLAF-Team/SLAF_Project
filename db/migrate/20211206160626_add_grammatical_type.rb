class AddGrammaticalType < ActiveRecord::Migration[5.2]
  def change
    remove_column :idioms, :type
    add_column :idioms, :grammatical_type, :string
  end
end
