class CreatePlogs < ActiveRecord::Migration[5.0]
  def change
    create_table :plogs do |t|
      t.int :owner_id
      t.string :content
      t.int :color_id

      t.timestamps
    end
  end
end
