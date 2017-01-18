class CreateCompanies < ActiveRecord::Migration[5.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :location
      t.integer :phoneno
      t.string :email

      t.timestamps
    end
  end
end
