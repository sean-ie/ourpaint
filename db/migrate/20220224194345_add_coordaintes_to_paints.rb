class AddCoordaintesToPaints < ActiveRecord::Migration[6.1]
  def change
    add_column :paints, :latitude, :float
    add_column :paints, :longitude, :float
  end
end
