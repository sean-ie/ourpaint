class CreatePaints < ActiveRecord::Migration[6.1]
  def change
    create_table :paints do |t|
      t.string :brand
      t.string :colour
      t.string :volume
      t.string :address
      t.string :paint_image
      t.float :latitude
      t.float :longitude
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
