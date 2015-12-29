class CreatePlogs < ActiveRecord::Migration[5.0]
  def change
    create_table :plogs do |t|
      t.integer :owner_id
      t.text :content
      t.integer :color_id

      t.timestamps
    end
  end
end
