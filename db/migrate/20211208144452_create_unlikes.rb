class CreateUnlikes < ActiveRecord::Migration[5.2]
  def change
    create_table :unlikes do |t|
      t.references :idiom, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
