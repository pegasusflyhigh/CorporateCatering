class CreateDailyMenus < ActiveRecord::Migration[5.0]
  def change
    create_table :daily_menus do |t|
      t.integer :date
      t.string :item
      t.integer :price

      t.timestamps
    end
  end
end
