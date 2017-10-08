class AddStateToOrders < ActiveRecord::Migration[5.1]
  def change
    add_column :orders, :shipped, :boolean, default: false
  end
end
