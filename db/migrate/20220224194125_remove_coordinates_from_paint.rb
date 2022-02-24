class RemoveCoordinatesFromPaint < ActiveRecord::Migration[6.1]
  def change
    remove_column :paints, :lat, :float
    remove_column :paints, :lng, :float
  end
end
