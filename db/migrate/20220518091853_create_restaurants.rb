class CreateRestaurants < ActiveRecord::Migration[6.1]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.integer :phone_number
      t.string :catergory

      t.timestamps
    end
  end
end