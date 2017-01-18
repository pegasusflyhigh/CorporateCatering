class AddReferenceofdailymenuAndEmployee < ActiveRecord::Migration[5.0]
  def change
   	add_reference  :orders ,:employees, foreign_key: true, index: true
  	add_reference  :orders ,:dailymenus, foreign_key: true, index: true

  end
end
