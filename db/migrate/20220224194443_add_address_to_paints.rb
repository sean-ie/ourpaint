class AddAddressToPaints < ActiveRecord::Migration[6.1]
  def change
    add_column :paints, :address, :string
  end
end
