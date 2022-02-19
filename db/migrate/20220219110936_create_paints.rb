class CreatePaints < ActiveRecord::Migration[6.1]
  def change
    create_table :paints do |t|
      t.string :brand
      t.string :colour
      t.string :volume
      t.float :lat
      t.float :lng
      t.string :paint_image
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
