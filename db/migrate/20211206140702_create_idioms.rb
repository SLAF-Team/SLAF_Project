class CreateIdioms < ActiveRecord::Migration[5.2]
  def change
    create_table :idioms do |t|
      t.string :title_en
      t.string :title_fr
      t.string :type
      t.text :body
      t.text :example
      t.belongs_to :user, index: true
      t.timestamps
    end
  end
end
