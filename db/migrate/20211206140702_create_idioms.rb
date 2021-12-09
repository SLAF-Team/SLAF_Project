class CreateIdioms < ActiveRecord::Migration[5.2]
  def change
    create_table :idioms do |t|
      t.string :title_en
      t.string :title_fr
      t.string :grammatical_type
      t.text :body
      t.text :example
      t.boolean :validated, :default => false
      t.belongs_to :user, index: true
      t.timestamps
    end
  end
end
